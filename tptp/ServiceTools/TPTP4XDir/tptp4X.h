#ifndef TPTP4X_H
#define TPTP4X_H
//-----------------------------------------------------------------------------
typedef struct {
    int Quietness;
    PrintFormatType Format;
    int KeepNonLogicals;
    int AllowFreeVariables;
    int AllowDuplicateNames;
    int Pretty;
    int ExpandIncludes;
    int Warnings;
    int SZSStatusReporting;
    String OutputDirectory;
    String Transformations;
} OptionsType;
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
#endif

