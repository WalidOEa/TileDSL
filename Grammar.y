{
module Grammar where
import Tokens
}

%name parseTL
%tokentype { Token }
%error { parseErr }

%token
 Bool        { BoolTypeToken _ }
 Int         { IntTypeToken _ }
 String      { StringTypeToken _ }
 String2     { ListStringTypeToken _ }
 LOOP        { LoopToken _ }
 FOR         { ForToken _ }
 DO          { DoToken _ }
 CONCAT      { ConcatToken _ }
 COPY        { CopyToken _ }
 ENLARGE     { EnlargeToken _ }
 ROTATE_R    { RightRotateToken _ }
 STACK       { StackToken _ }
 EMPTY       { EmptyToken _ }
 READ        { ReadToken _ }
 REFLECT_Y   { ReflectYToken _ }
 REFLECT_X   { ReflectXToken _ }
 NEGATE      { NegateToken _ }
 CONJUNCT    { ConjunctionToken _ }
 GET_SUBTILE { SubtileToken _ }
 LENGTH      { LengthToken _ }
 SHRINK      { ShrinkToken _ }
 COMPARE     { CompareToken _ }
 IF          { IfToken _ }
 THEN        { ThenToken _ }
 ELSE        { ElseToken _ }
 LET         { LetToken _ }
 IN          { InToken _ }
 true        { TrueToken _ }
 false       { FalseToken _ }
 '=='        { EqualToken _ }
 '/='        { NotEqualToken _ }
 '+'         { AdditionToken _ }
 '-'         { SubtractToken _ }
 '/'         { DivisionToken _ }
 '*'         { MultiplyToken _ }
 '^'         { ExponentToken _ }
 '%'         { ModuloToken _ }
 '<='        { LessEqualToken _ } 
 '>='        { GreatEqualToken _ }
 '<'         { LessToken _ }
 '>'         { GreatToken _ } 
 '&&'        { AndToken _ }
 '||'        { OrToken _ }
 '!'         { NotToken _ }
 AND         { AndToken _ }
 OR          { OrToken _ }
 NOT         { NotToken _ }
 '{'         { OpenControlToken _ }
 '}'         { CloseControlToken _ }
 '('         { LParToken _ } 
 ')'         { RParToken _ }
 ','         { SeparatorToken _ }
 ':'         { TypeToken _ }
 ';'         { EndLineToken _ }
 var         { VarToken _ $$ }
 '='         { AssignToken _ }
 str         { StringToken _ $$ }
 int         { IntToken _ $$ }

%left ';'
%left int
%left '+' '-'
%right '*' '/'
%right CONCAT
%right LOOP
%right COPY
%right STACK
%right CONJUNCT
%right IF
%right var
%nonassoc '>'
%nonassoc '<'
%nonassoc '<='
%nonassoc '>='
%nonassoc '=='
%nonassoc '/='
%nonassoc '^'
%nonassoc '%'
%nonassoc '('
%nonassoc ')'
%nonassoc '{'
%nonassoc '}'
%nonassoc str
%nonassoc '='
%nonassoc ROTATE_R
%nonassoc ENLARGE
%nonassoc SHRINK
%nonassoc COMPARE
%nonassoc EMPTY
%nonassoc REFLECT_Y
%nonassoc REFLECT_X
%nonassoc NEGATE
%nonassoc LENGTH
%nonassoc LET
%nonassoc IN
%nonassoc '&&'
%nonassoc AND
%nonassoc '||'
%nonassoc OR
%nonassoc '!'
%nonassoc NOT
%%
Expr : Expr ';' Expr            { Sequence $1 $3 }
     | COPY Expr Expr           { Copy $2 $3 }
     | CONCAT Expr Expr         { Concat $2 $3 }
     | ENLARGE Expr Expr        { Enlarge $2 $3 }
     | ROTATE_R Expr Expr       { RotateR $2 $3 }
     | STACK Expr Expr          { Stack $2 $3 }
     | EMPTY Expr               { Empty $2 }
     | REFLECT_Y Expr           { ReflectY $2 }
     | REFLECT_X Expr           { ReflectX $2 }
     | NEGATE Expr              { Negate $2 }
     | SHRINK Expr Expr         { Shrink $2 $3 }
     | CONJUNCT Expr Expr                                                           { Conjunction $2 $3 }
     | LOOP Expr '{' Expr '}'                                                       { Loop $2 $4 }  
     | FOR '(' var ',' var ':' TLType '=' Expr ',' Expr ',' var ')' DO '{' Expr '}' { ForLoop $3 $5 $7 $9 $11 $13 $17 }
     | IF '(' Expr ')' THEN '{' Expr '}' ELSE '{' Expr '}'                          { Branch $3 $7 $11 }
     | LET '(' var ':' TLType '=' Expr ')' IN '{' Expr '}'                          { Let $3 $5 $7 $11 }
     | GET_SUBTILE '(' Expr ',' Expr ')' Expr Expr                                  { Subtile $3 $5 $7 $8 }
     | LENGTH var Expr   { Length $2 $3 }
     | COMPARE Expr Expr { Compare $2 $3 }
     | Expr '==' Expr    { Equal $1 $3 }
     | Expr '/=' Expr    { NotEqual $1 $3 }
     | Expr '<=' Expr    { LessEqual $1 $3 }
     | Expr '>=' Expr    { GreatEqual $1 $3 }
     | Expr '&&' Expr    { And $1 $3 }
     | Expr AND Expr     { And $1 $3 }
     | READ var          { Read $2 }
     | Expr '||' Expr    { Or $1 $3 }
     | Expr OR Expr      { Or $1 $3 }
     | '!' Expr          { Not $2 }
     | NOT Expr          { Not $2 }
     | Expr '<' Expr     { Less $1 $3 }
     | Expr '>' Expr     { Great $1 $3 }
     | Expr '+' Expr     { Add $1 $3 }
     | Expr '-' Expr     { Minus $1 $3 }
     | Expr '/' Expr     { Div $1 $3 }
     | Expr '*' Expr     { Times $1 $3 }
     | Expr '^' Expr     { Power $1 $3 }
     | Expr '%' Expr     { Mod $1 $3 } 
     | '(' Expr ')'      { $2 }
     | true              { TLTrue }
     | false             { TLFalse }
     | str               { Str $1 }
     | var               { Var $1 }
     | int               { Int $1 }

TLType : Bool       { TLBool }
       | String     { TLString }
       | Int        { TLInt }
       | String2    { TLListString }

{
parseErr :: [Token] -> a
parseErr [] = error "Unknown parse error"
parseErr (t:ts) = error ("line, column: " ++ tokenPosn t)

data TLType = TLInt | TLBool | TLString | TLListString
   deriving (Show,Eq)

type Environment = [(String, Expr)]

data Expr =
  Sequence Expr Expr | Copy Expr Expr | Concat Expr Expr | Enlarge Expr Expr |
  RotateR Expr Expr | Stack Expr Expr | Empty Expr | ReflectY Expr | ReflectX Expr |
  Negate Expr | Conjunction Expr Expr | Branch Expr Expr Expr | Let String TLType Expr Expr |
  Loop Expr Expr | ForLoop String String TLType Expr Expr String Expr | Subtile Expr Expr Expr Expr |
  Shrink Expr Expr | Compare Expr Expr | Length String Expr | Read String | Equal Expr Expr | NotEqual Expr Expr |
  Less Expr Expr | LessEqual Expr Expr | Great Expr Expr | GreatEqual Expr Expr | And Expr Expr |
  Or Expr Expr | Not Expr | Add Expr Expr | Minus Expr Expr | Div Expr Expr | Times Expr Expr |
  Power Expr Expr | Mod Expr Expr | Str String | TLTrue | TLFalse | ListStr [String] | Var String | Int Int                             
  deriving (Show, Eq)
}