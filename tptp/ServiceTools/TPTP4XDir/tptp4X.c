#include <stdio.h>
#include <assert.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include "DataTypes.h"
#include "Utilities.h"
#include "FileUtilities.h"
#include "Tokenizer.h"
#include "Parsing.h"
#include "Signature.h"
#include "Examine.h"
#include "Modify.h"
#include "List.h"
#include "Statistics.h"
#include "ListStatistics.h"
#include "PrintTSTP.h"
#include "AddEquality.h"
#include "FOFify.h"
#include "Randomize.h"
#include "NumberNames.h"
#include "tptp4X.h"
//-----------------------------------------------------------------------------
void ReformatFile(OptionsType Options,char * FileName,char * IncludeFilter,
FILE * OutputHandle,int RemoveHeader);
//-----------------------------------------------------------------------------
//----Return the first index for files in argv
int ProcessCommandLine(int argc,char * argv[],OptionsType * Options) {

    int OptionChar;
    
    Options->Quietness = 1;
    strcpy(Options->OutputDirectory,"-");
    Options->Format = tptp;
    Options->Pretty = 1;
    Options->AllowFreeVariables = 0;
    Options->AllowDuplicateNames = 0;
    Options->ExpandIncludes = 0;
    Options->KeepNonLogicals = 1;
    Options->Warnings = 0;
    Options->SZSStatusReporting = 0;
    strcpy(Options->Transformations,"");

    while ((OptionChar = getopt(argc,argv,"q:d:f:t:u:VNxcwzh")) != -1) {
        switch (OptionChar) {
            case 'q':
                Options->Quietness = atoi(optarg);
                break; 
            case 'd':
                strcpy(Options->OutputDirectory,optarg);
                break;
            case 'f':
                Options->Format = StringToPrintFormat(optarg);
//----If not a TPTP format, then non-logicals get stripped, and includes are
//----expanded
                if (Options->Format != tptp && Options->Format != tptp_short &&
Options->Format != oldtptp) {
                    Options->ExpandIncludes = 1;
                }
                break; 
            case 't':
                strcpy(Options->Transformations,optarg);
//----If adding equality then must expand includes to get full signature
                if (strstr(optarg,"add_equality") != NULL) {
                    Options->ExpandIncludes = 1;
                }
//----If fofifying, then must tolerate free variables
                if (strstr(optarg,"fofify") != NULL) {
                    Options->AllowFreeVariables = 1;
                }
//----If randomizing then must remove non-logicals
                if (strstr(optarg,"randomize") != NULL) {
                    Options->KeepNonLogicals = 0;
                }
                break; 
            case 'u':
                Options->Pretty = strcmp("machine",optarg) ? 1 : 0;
                break;
            case 'V':
                Options->AllowFreeVariables = 1;
                break;
            case 'N':
                Options->AllowDuplicateNames = 1;
                break;
            case 'x':
                Options->ExpandIncludes = 1;
                break;
            case 'c':
                Options->KeepNonLogicals = 0;
                break;
            case 'w':
                Options->Warnings = 1;
                break;
            case 'z':
                Options->SZSStatusReporting = 1;
//----Set in JJParser
                SetSZSStatusReporting(1);
                break;
            case 'h':
            case '?':
                printf("Usage: %s <options> <files>\n",argv[0]);
                printf("<options> are ...\n");
                printf("  -q<quietness>   - control amount of output (1)\n");
                printf("  -d<directory>   - output directory (stdout)\n");
                printf("  -f<format>      - output format (tptp)\n");
                printf("    tptp          - long tptp format\n");
                printf("    tptp:short    - short tptp format\n");
                printf("    oldtptp       - old tptp format\n");
                printf("  -t<transform>   - transform the formulae (none)\n");
                printf("    add_equality  - adds all axioms of equality\n");
                printf("        :rstfp    - adds selected axioms of equality\n");
                printf("    fofify -V     - make universally quantified fof\n");
                printf("    fofify:! -V   - universally quantify fof\n");
                printf("    noint         - rename integers to constants\n");
                printf("    aritize       - make function and predicate names unique by arity\n");
                printf("    dequote       - make function and predicate names unquoted\n");
                printf("    shortennamesN - shorten formula names to N characters\n");
                printf("    numbernamesN  - add N digit extension to formula names\n");
                printf("    uniquenamesN  - add N digit extension to duplicate formula names\n");
                printf("    randomize     - randomize formulae and their order\n");
                printf("  -u<user>        - user type (human)\n");
                printf("    human         - pretty printed with indenting\n");
                printf("    machine       - one line per formula\n");
                printf("  -V              - allow free variables (no)\n");
                printf("  -N              - allow duplicate formula names (no)\n");
                printf("  -x              - expand includes (no)\n");
                printf("  -c              - clean away non-logicals (no)\n");
                printf("  -w              - warnings (no)\n");
                printf("  -z              - SZS ontology status output (no)\n");
                printf("  -h              - print this help\n");
                printf("<files> are ...\n");
                printf("  Any normal file name\n");
                printf("  A TPTP problem name\n");
                printf("  -- for stdin\n");
                exit(EXIT_SUCCESS);
                break;
            default:
                CodingError("Something wrong in getopt");
                break;
        }
    }
//----Backup to -- for stdin input to JJParser
    if (!strcmp(argv[optind-1],"--")) {
        optind--;
    }

//----Echo if in verbose mode
    if (Options->Quietness == 0) {
        printf("Command line options:\n");
        printf("    Quietness %d\n",Options->Quietness);
        printf("    OutputDirectory %s\n",Options->OutputDirectory);
        printf("    Format %s\n",PrintFormatToString(Options->Format));
        printf("    Pretty %d\n",Options->Pretty);
        printf("    AllowFreeVariables %d\n",Options->AllowFreeVariables);
        printf("    AllowDuplicateNames %d\n",Options->AllowDuplicateNames);
        printf("    ExpandIncludes %d\n",Options->ExpandIncludes);
        printf("    KeepNonLogicals %d\n",Options->KeepNonLogicals);
        printf("    Warnings %d\n",Options->Warnings);
        printf("    SZSStatusReporting %d\n",Options->SZSStatusReporting);
    }

    return(optind);
}
//-----------------------------------------------------------------------------
READFILE OpenInputREADFILE(OptionsType Options,char * FileName) {

    READFILE InputStream; 
    String ErrorMessage;

    if ((InputStream = OpenReadFile(FileName,NULL)) != NULL) {
        return(InputStream);
    } else {
        sprintf(ErrorMessage,"Cannot open %s for reading\n",FileName);
        ReportError("OSError",ErrorMessage,0);
        return(NULL);
    }
}
//-----------------------------------------------------------------------------
void MakeOutputFileName(OptionsType Options,char * FileName,String
OutputFileName) {

    char * SlashDotP;

//----If relative to current or not absolute, start with cwd
    if (Options.OutputDirectory[0] == '.' || 
Options.OutputDirectory[0] != '/') {
        if (getcwd(OutputFileName,STRINGLENGTH) == NULL) {
            ReportError("OSError","Cannot get cwd",1);
        }
    } else {
        strcpy(OutputFileName,"");
    }
//----If the user specified directory does not start with /, add one
    if (Options.OutputDirectory[0] != '/') {
        strcat(OutputFileName,"/");
    }
//----If user output directory is not ., add it on
    if (!(strlen(Options.OutputDirectory) == 1 && 
Options.OutputDirectory[0] == '.')) {
        strcat(OutputFileName,Options.OutputDirectory);
    }
//----If the directory does not end with /, add one
    if (OutputFileName[strlen(OutputFileName)-1] != '/') {
        strcat(OutputFileName,"/");
    }
//----Get basename of file name, and add it on
    if ((SlashDotP = strrchr(FileName,'/')) == NULL) {
        strcat(OutputFileName,FileName);
    } else {
        strcat(OutputFileName,SlashDotP+1);
    }
//----Clobber .p extension
    if ((SlashDotP = strstr(OutputFileName,".p")) != NULL) {
        *SlashDotP = '\0';
    }
//----Output format extension
    strcat(OutputFileName,".");
    strcat(OutputFileName,PrintFormatToString(Options.Format));
}
//-----------------------------------------------------------------------------
FILE * OpenOutputFILE(OptionsType Options,char * FileName,
String OutputFileName) {

    FILE * OutputHandle;
    String ErrorMessage;

    if (strcmp(Options.OutputDirectory,"-")) {
        MakeOutputFileName(Options,FileName,OutputFileName);
        if ((OutputHandle = fopen(OutputFileName,"w")) == NULL) {
            sprintf(ErrorMessage,"Cannot open output file %s\n",OutputFileName);
            ReportError("OSError",ErrorMessage,1);
            return(NULL);
        }
    } else {
        OutputHandle = stdout;
        strcpy(OutputFileName,"-");
    }

    return(OutputHandle);
}
//-----------------------------------------------------------------------------
void CloseAndReportOutputFile(OptionsType Options,char * FileName,
FILE * OutputHandle,String OutputFileName) {

    if (OutputHandle != stdout) {
        fclose(OutputHandle);
        printf("%s -> %s\n",FileName,OutputFileName);
    }
}
//-----------------------------------------------------------------------------
void ReformatAnnotatedFormula(OptionsType Options,READFILE Stream,SIGNATURE 
Signature,ANNOTATEDFORMULA AnnotatedFormula,FILE * OutputHandle,
char * IncludeFilter,SyntaxType * LastNodeType) {

    String NewIncludeFile;
    String NewIncludeFilter;
    SuperString FormulaName;
    SyntaxType ThisNodeType;

    ThisNodeType = GetSyntax(AnnotatedFormula);
    GetName(AnnotatedFormula,FormulaName);
//----Blank line after every formula
    if (Options.Pretty && 
(*LastNodeType == tptp_thf || *LastNodeType == tptp_tff ||
 *LastNodeType == tptp_fof || *LastNodeType == tptp_cnf ||
(*LastNodeType == tptp_tpi && ThisNodeType != tptp_tpi)) &&
ThisNodeType != blank_line) {
        printf("\n");
    }

//----Expand includes if necessary
    if (Options.ExpandIncludes && ThisNodeType == include) {
        GetIncludeParts(AnnotatedFormula,NewIncludeFile,NewIncludeFilter);
        ReformatFile(Options,NewIncludeFile,NewIncludeFilter,OutputHandle,1);
    } else if (LogicalAnnotatedFormula(AnnotatedFormula)) {
//----Check if it passes the include filter
        if (!strcmp(IncludeFilter,"all") ||
RemoveNameFromList(FormulaName,IncludeFilter)) {
            PrintAnnotatedTSTPNode(OutputHandle,AnnotatedFormula,Options.Format,
Options.Pretty);
        }
    } else if (*LastNodeType != blank_line || ThisNodeType != blank_line) {
//----Skip double blank lines
        PrintAnnotatedTSTPNode(OutputHandle,AnnotatedFormula,Options.Format,
Options.Pretty);
    }
    *LastNodeType = ThisNodeType;
    fflush(stdout);
}
//-----------------------------------------------------------------------------
void ReformatFile(OptionsType Options,char * FileName,char * IncludeFilter,
FILE * OutputHandle,int RemoveHeader) {

    SIGNATURE Signature;
    ANNOTATEDFORMULA AnnotatedFormula;
    READFILE InputStream; 
    LISTNODE AllAnnotatedFormulae;
    SyntaxType LastNodeType;
    int NumberOfFOF;
    int NumberOfCNF;
    int NumberNamesIndex;
    int MaximalNameLength;
    String NumberNamesFormat;
    LISTNODE EqualityAxioms;
    char * NamesBuffer;
    int NamesBufferSize;

    LastNodeType = nontype;

    if ((InputStream = OpenInputREADFILE(Options,FileName)) != NULL) {
        NextToken(InputStream);
//----New signature for each file
        Signature = NewSignature();
//----Data for indexing names
        if (strstr(Options.Transformations,"numbernames") != NULL ||
strstr(Options.Transformations,"uniquenames") != NULL) {
            MakeNumberNamesFormat(Options,NumberNamesFormat);
            NumberNamesIndex = 1;
        }
        if (strstr(Options.Transformations,"shortennames") != NULL) {
            MaximalNameLength = GetMaximalNameLength(Options);
        } else {
            MaximalNameLength = -1;
        }
//----Check if formulae can be processed one-by-one (useful for huge files)
        if ((Options.Format == tptp || Options.Format == tptp_short ||
Options.Format == oldtptp) && 
//----noint and aritize modify the signature
strstr(Options.Transformations,"noint") == NULL && 
strstr(Options.Transformations,"aritize") == NULL && 
strstr(Options.Transformations,"dequote") == NULL && 
//----Need them all at one to randomize order
strstr(Options.Transformations,"randomize") == NULL && 
//----Must expand includes for equality to get full signature
strstr(Options.Transformations,"add_equality") == NULL) {
//----Memory for recording formulae names
            if (!Options.AllowDuplicateNames) {
                NamesBuffer = (char *)Malloc(sizeof(String));
                NamesBuffer[0] = '\0';
                NamesBufferSize = sizeof(String);
            }
//----Reading formulae one-by-one
            while (!CheckTokenType(InputStream,endeof)) {
                AnnotatedFormula = ParseAndUseAnnotatedFormula(InputStream,
Signature);
//----Remove header (from included files)
                if (GetSyntax(AnnotatedFormula) == comment && RemoveHeader && 
strstr(AnnotatedFormula->AnnotatedFormulaUnion.Comment,"% File     :") ==
AnnotatedFormula->AnnotatedFormulaUnion.Comment) {
                    do {
                        FreeAnnotatedFormula(&AnnotatedFormula);
                        AnnotatedFormula = ParseAndUseAnnotatedFormula(
InputStream,Signature);
                    } while (GetSyntax(AnnotatedFormula) == blank_line ||
(GetSyntax(AnnotatedFormula) == comment && strstr(AnnotatedFormula->
AnnotatedFormulaUnion.Comment,"%---------------------------------") != 
AnnotatedFormula->AnnotatedFormulaUnion.Comment));
                } else {
//----Shorten this name
                    if (MaximalNameLength > 0 && 
LogicalAnnotatedFormula(AnnotatedFormula)) {
                        ShortenName(AnnotatedFormula,MaximalNameLength);
                    }
//----Add name index
                    if (strstr(Options.Transformations,"numbernames") != NULL &&
LogicalAnnotatedFormula(AnnotatedFormula)) {
                        AddNameIndex(AnnotatedFormula,NumberNamesIndex++,
NumberNamesFormat);
                    }
//----Now check for uniqueness
                    if (!Options.AllowDuplicateNames) {
                        CheckOneDuplicateName(AnnotatedFormula,
strstr(Options.Transformations,"uniquenames") != NULL,&NamesBuffer,
&NamesBufferSize,NumberNamesFormat,&NumberNamesIndex);
                    }
//----FOFify done before counting and output
                    if (strstr(Options.Transformations,"fofify") != NULL) {
                        FOFifyAnnotatedFormula(Options,AnnotatedFormula);
                    }
//----Output
                    if (Options.Quietness < 3) {
                        ReformatAnnotatedFormula(Options,InputStream,Signature,
AnnotatedFormula,OutputHandle,IncludeFilter,&LastNodeType);
                    }
                }
                FreeAnnotatedFormula(&AnnotatedFormula);
            }
//----Free names buffer
            if (!Options.AllowDuplicateNames) {
                Free((void **)&NamesBuffer);
            }
        } else {

//----In foreign format it's necessary to read all first (for DFG)
//----If deintegerizing it's necessary to read all first to get signature
            AllAnnotatedFormulae = ParseREADFILEOfFormulae(InputStream,
Signature,Options.ExpandIncludes,NULL);
//----Shorten names
            if (MaximalNameLength > 0) {
                ShortenNames(AllAnnotatedFormulae,MaximalNameLength);
            }
//----Index names
            if (strstr(Options.Transformations,"numbernames") != NULL) {
                NumberNames(Options,AllAnnotatedFormulae,NumberNamesFormat);
            }
//----Check for duplicate formula names
            if (!Options.AllowDuplicateNames) {
                CheckDuplicateNames(AllAnnotatedFormulae,
strstr(Options.Transformations,"uniquenames") != NULL,
NumberNamesFormat,&NumberNamesIndex);
            }
//----Randomizing done before all else, no worry
            if (strstr(Options.Transformations,"randomize") != NULL) {
                RandomizeCommutativeFormulae(&AllAnnotatedFormulae);
            }
//----Deintegerizing done on the signature
            if (strstr(Options.Transformations,"noint") != NULL) {
                UninterpretIntegersInSignature(Signature);
            }
//----Aritizing done on the signature
            if (strstr(Options.Transformations,"aritize") != NULL) {
                AritizeSymbolsInSignature(Signature);
            }
//----Dequoting done on the signature
            if (strstr(Options.Transformations,"dequote") != NULL) {
                DequoteSymbolsInSignature(Signature);
            }
//----FOFify done before equality
            if (strstr(Options.Transformations,"fofify") != NULL) {
                FOFifyListOfAnnotatedFormulae(Options,AllAnnotatedFormulae);
            }
//----Count number of each type
            NumberOfFOF = ListCount(AllAnnotatedFormulae,fof_nodes);
            NumberOfCNF = ListCount(AllAnnotatedFormulae,cnf_nodes);
            if (strstr(Options.Transformations,"add_equality") != NULL &&
(EqualityAxioms = AddEqualityAxioms(Options,Signature,NumberOfFOF,
NumberOfCNF)) != NULL) {
                AllAnnotatedFormulae = AppendListsOfAnnotatedTSTPNodes(
AllAnnotatedFormulae,EqualityAxioms);
            }
            if (Options.Quietness < 3) {
                PrintListOfAnnotatedTSTPNodes(OutputHandle,Signature,
AllAnnotatedFormulae,Options.Format,Options.Pretty);
            }
            FreeListOfAnnotatedFormulae(&AllAnnotatedFormulae);
        }
        CloseReadFile(InputStream);
//----Clean and delete the signature (should be empty here)
        FreeSignature(&Signature);
    } else {
        fclose(OutputHandle);
        ReportError("OSError","Could not open input file",1);
    }
}
//-----------------------------------------------------------------------------
int main(int argc, char *argv[]) {

    OptionsType Options;
    int ArgvFileIndex;
    FILE * OutputHandle;
    String FileName;
    String OutputFileName;
    String ErrorMessage;;

    ArgvFileIndex = ProcessCommandLine(argc,argv,&Options);

    SetNeedForNonLogicTokens(Options.KeepNonLogicals);
    SetAllowFreeVariables(Options.AllowFreeVariables);
    SetWarnings(Options.Warnings);

//----Do each file on command line
    while (ArgvFileIndex < argc) {
        strcpy(FileName,argv[ArgvFileIndex++]);
        if ((OutputHandle = OpenOutputFILE(Options,FileName,OutputFileName)) 
!= NULL) {
            ReformatFile(Options,FileName,"all",OutputHandle,0);
//----Close the output file
            CloseAndReportOutputFile(Options,FileName,OutputHandle,
OutputFileName);
        } else {
            sprintf(ErrorMessage,"Could not open output for %s\n",FileName);
            ReportError("OSError",ErrorMessage,1);
        }
    }

    return(EXIT_SUCCESS);
}
//-----------------------------------------------------------------------------