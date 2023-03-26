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

comment  \(\*.*\n*\*\)

left_parent [\(]
right_parent [\)]
lower_letter [a-z]
upper_letter [A-Z]
alphabetic ({lower_letter}|{upper_letter}|$|_)
character ([0-9]|{alphabetic})
variableid {alphabetic}+{character}*


%%
[0-9]*      printf("INTEGER");
.*           printf("Syntax Error!");
%%
