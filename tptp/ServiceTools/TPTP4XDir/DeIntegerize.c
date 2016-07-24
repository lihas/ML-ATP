#include <stdio.h>
#include <assert.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include "DataTypes.h"
#include "Utilities.h"
#include "Examine.h"
#include "Modify.h"
#include "PrintTSTP.h"
#include "tptp4X.h"
//-----------------------------------------------------------------------------
        return(NULL);
    }
//----Extract starting at the fofify part
    strcpy(FOFifyPart,strstr(Options.Transformations,"fofify"));
//----Remove other transformations
    if (strchr(FOFifyPart,'+') != NULL) {
        *(strchr(FOFifyPart,'+')) = '\0';
    }
//----See if a specific algorithm has been requested
    if (strchr(FOFifyPart,':') !=  NULL) {
        strcpy(Algorithm,strchr(FOFifyPart,':')+1);
    } else {
        strcpy(Algorithm,"plain");
    }       

    return(Algorithm);
}
//-----------------------------------------------------------------------------
ANNOTATEDFORMULA DoFOFifyAnnotatedFormula(ANNOTATEDFORMULA AnnotatedFormula,
char * Algorithm) {

    if (Algorithm != NULL && LogicalAnnotatedFormula(AnnotatedFormula)) {
//----Convert CNF to FOF and universal quantify
        if (!strcmp(Algorithm,"plain")) {
            FOFify(AnnotatedFormula,universal);
//----Universal quantify FOF
        } else if (!strcmp(Algorithm,"quantify_universal") ||
!strcmp(Algorithm,"!")) {
            Quantify(AnnotatedFormula,universal);
        }
    }

    return(AnnotatedFormula);
}
//-----------------------------------------------------------------------------
ANNOTATEDFORMULA FOFifyAnnotatedFormula(OptionsType Options,ANNOTATEDFORMULA 
AnnotatedFormula) {

    String Algorithm;

    return(DoFOFifyAnnotatedFormula(AnnotatedFormula,ChooseAlgorithm(Options,
Algorithm)));

}
//-----------------------------------------------------------------------------
LISTNODE FOFifyListOfAnnotatedFormulae(OptionsType Options,
LISTNODE AllAnnotatedFormulae) {

    String Algorithm;
    LISTNODE Target;

    if (strstr(Options.Transformations,"noint") != NULL) {
    Target = AllAnnotatedFormulae;
    while (Target != NULL) {
        DoFOFifyAnnotatedFormula(Target->AnnotatedFormula,Algorithm);
    }
 
    return(AllAnnotatedFormulae);
}
//-----------------------------------------------------------------------------
