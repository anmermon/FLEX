%{
    #include <stdio.h>

FILE *yyin;
%}

LETRA   [a-zA-Z]
DIGITO  [0-9]

ID      {LETRA}({LETRA}|{DIGITO})*



SELECT  [s|S][e|E][l|L][e|E][c|C][t|T]
WHERE   [w|W][h|H][e|E][r|R][e|E]
FROM    [f|F][r|R][o|O][m|M]


%%

{WHERE}             {printf("\n Palabra clave WHERE: (%s)", yytext);}
{SELECT}            {printf("\n Palabra clave SELECT: (%s)", yytext);}
{FROM}              {printf("\n Palabra clave FROM: (%s)", yytext);}
{ID}                {printf("\n ID: (%s)", yytext);}

%%

int main()
{
    yyin = fopen( "texto.txt", "r");
    yylex();
    return 0;
}