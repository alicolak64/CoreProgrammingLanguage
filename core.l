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
\+                      printf(" PLUS_OP ");
\-                      printf(" MINUS_OP ");
\*                      printf(" MULTIPLY_OP ");
\/                      printf(" DIVIDE_OP ");
{integer}               printf(" INTEGER ");
{float}                 printf(" FLOAT ");
{text}                  printf(" STRING "); 
{character}             printf(" CHARACTER "); 
{boolean}               printf(" BOOLEAN "); 
{INT_TYPE}              printf(" INT_TYPE ");
{FLOAT_TYPE}            printf(" FLOAT_TYPE ");
{STRING_TYPE}           printf(" STRING_TYPE ");
{BOOLEAN_TYPE}          printf(" BOOLEAN_TYPE ");
{CHAR_TYPE}             printf(" CHAR_TYPE ");
{final}                 printf(" CONSTANT ");
{func}                  printf(" FUNCTION ");
{void}                  printf(" VOID_TYPE ");
return                  printf(" RETURN ");
or                      printf(" OR_OP ");
and                     printf(" AND_OP ");
\=                      printf(" ASSIGN_OP ");
mod                     printf(" MOD_OP ");
\!\=                    printf(" NOT_EQUAL_CHECK ");
\=\=                    printf(" EQUALITY_CHECK ");
\>                      printf(" GREATER_OP ");
\<                      printf(" SMALLER_OP ");
\>=                     printf(" GREATER_OR_EQUAL_OP ");
\<=                     printf(" SMALLER_OR_EQUAL_OP ");
if                      printf(" IF_STMT ");
else                    printf(" ELSE_STMT ");
elif                    printf(" ELSE_IF_STMT ");
for                     printf(" FOR_LOOP ");
while                   printf(" WHILE_LOOP ");
{IO}                    printf(" IO_OP ");
{comment}               printf(" COMMENT ");
print                   printf(" PRINT ");
RUN                     printf(" RUN_PROG ");
FINISH                  printf(" FINISH_PROG ");
\{                      printf(" OPEN_CURLY ");
\}                      printf(" CLOSE_CURLY ");
\(                      printf(" OPEN_PARENTHESIS ");
\)                      printf(" CLOSE_PARENTHESIS ");
\;                      printf(" SEMICOLON ");
\,                      printf(" COMMA ");
{var}                   printf(" VARIABLE ");
[ \t]                   /* Ignore whitespace */
.                       printf(" Syntax Error! ");

%%
