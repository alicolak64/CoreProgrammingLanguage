text (\"[^\"]*\")
character (\'[^\']\')
integer ([-+]?[0-9]+)
float ([-+]?[0-9]*(\.)?[0-9]+)
boolean (true|false)
IO (writeFile|readFile)

INT_TYPE intel
FLOAT_TYPE float
STRING_TYPE text
BOOLEAN_TYPE flag
CHAR_TYPE char
final const

func func
void empty

comment  \(\*(.|\n)*?\*\)

var [a-zA-Z_$][a-zA-Z0-9_'$]*


%%
[0-9]*      printf("INTEGER");
.*           printf("Syntax Error!");
%%
