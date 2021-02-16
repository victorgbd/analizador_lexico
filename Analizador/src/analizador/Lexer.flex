
package analizador;
import static analizador.Tokens.*;
%%
%class Lexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[\t\r\n]+
%{
    public String lexeme;
%}
%%
inicio |
const |
var |
entero |
real |
cadena |
leer |
visua |
fin |
while {lexeme=yytext(); return Reservadas;}
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
"=" {return Igual;}
"+" {return Suma;}
"-" {return Resta;}
"*" {return Multiplicacion;}
"/" {return Division;}
"\"" {return comillasDobles;}
"(" {return ParentesisIzq;}
")" {return ParentesisDer;}
"," {return Coma;}
"." {return Punto;}
";" {return Puntoycoma;}
{L}({L}|{D})* {lexeme=yytext(); return Identificador;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
 . {return ERROR;}