{
module Tokens where
}

%wrapper "posn"

$digit = 0-9
$alpha = [a-zA-Z]
$special = [\!\.\;\,\$\|\*\+\?\#\~\-\{\}\(\)\[\]\^\/\\]

tokens :-

$white+     ;
"//".*      ;
Bool        { \p s -> BoolTypeToken p }
Int         { \p s -> IntTypeToken p }
String      { \p s -> StringTypeToken p }
String2     { \p s -> ListStringTypeToken p }
LOOP        { \p s -> LoopToken p }
FOR         { \p s -> ForToken p }
DO          { \p s -> DoToken p }
CONCAT      { \p s -> ConcatToken p }
COPY        { \p s -> CopyToken p }
ENLARGE     { \p s -> EnlargeToken p }
ROTATE_R    { \p s -> RightRotateToken p }
STACK       { \p s -> StackToken p }
EMPTY       { \p s -> EmptyToken p }
REFLECT_Y   { \p s -> ReflectYToken p }
REFLECT_X   { \p s -> ReflectXToken p }
NEGATE      { \p s -> NegateToken p }
CONJUNCT    { \p s -> ConjunctionToken p }
SHRINK      { \p s -> ShrinkToken p }
COMPARE     { \p s -> CompareToken p }
GET_SUBTILE { \p s -> SubtileToken p }
LENGTH      { \p s -> LengthToken p }
IF          { \p s -> IfToken p }
THEN        { \p s -> ThenToken p }
ELSE        { \p s -> ElseToken p }
RETURN      { \p s -> ReturnToken p }
LET         { \p s -> LetToken p }
IN          { \p s -> InToken p }
READ        { \p s -> ReadToken p }
true        { \p s -> TrueToken p }
false       { \p s -> FalseToken p }
Null        { \p s -> NullToken p }
\==         { \p s -> EqualToken p }
\/=         { \p s -> NotEqualToken p }
\+          { \p s -> AdditionToken p }
\-          { \p s -> SubtractToken p }
\/          { \p s -> DivisionToken p }
\*          { \p s -> MultiplyToken p }
\^          { \p s -> ExponentToken p }
\%          { \p s -> ModuloToken p }
\>=         { \p s -> GreatEqualToken p }
\<=         { \p s -> LessEqualToken p }   
\<          { \p s -> LessToken p }
\>          { \p s -> GreatToken p }
\&&         { \p s -> AndToken p }
\|\|        { \p s -> OrToken p }
\!          { \p s -> NotToken p }
AND         { \p s -> AndToken p }
OR          { \p s -> OrToken p }
NOT         { \p s -> NotToken p }  
\{          { \p s -> OpenControlToken p }
\}          { \p s -> CloseControlToken p }
\(          { \p s -> LParToken p }
\)          { \p s -> RParToken p }
\,          { \p s -> SeparatorToken p }
\:          { \p s -> TypeToken p }
\;          { \p s -> EndLineToken p }
\" [$alpha $digit $white $special]* \"     { \p s -> StringToken p s }
$alpha [$alpha $digit \_ \' \.]*           { \p s -> VarToken p s } 
\=          { \p s -> AssignToken p }
$digit+     { \p s -> IntToken p (read s) }

{
data Token = 
  BoolTypeToken AlexPosn        |
  IntTypeToken AlexPosn         |
  StringTypeToken AlexPosn      |
  ListStringTypeToken AlexPosn  |
  LoopToken AlexPosn            |
  ForToken AlexPosn             |
  DoToken AlexPosn              |
  TrueToken AlexPosn            |
  FalseToken AlexPosn           |
  ConcatToken AlexPosn          |
  CopyToken AlexPosn            |
  RotateToken AlexPosn          |
  EnlargeToken AlexPosn         |
  RightRotateToken AlexPosn     |
  StackToken AlexPosn           |
  EmptyToken AlexPosn           |
  ReflectYToken AlexPosn        |
  ReflectXToken AlexPosn        |
  NegateToken AlexPosn          |
  ReadToken AlexPosn            |
  ShrinkToken AlexPosn          |
  CompareToken AlexPosn         |
  ConjunctionToken AlexPosn     |
  IfToken AlexPosn              |
  ThenToken AlexPosn            |
  ElseToken AlexPosn            |
  ReturnToken AlexPosn          |
  LetToken AlexPosn             |
  InToken AlexPosn              |
  SubtileToken AlexPosn         |
  EqualToken AlexPosn           |
  NotEqualToken AlexPosn        |
  AdditionToken AlexPosn        |
  SubtractToken AlexPosn        |
  DivisionToken AlexPosn        |
  MultiplyToken AlexPosn        |
  ExponentToken AlexPosn        |
  LengthToken AlexPosn          |
  ModuloToken AlexPosn          |
  GreatEqualToken AlexPosn      |
  LessEqualToken AlexPosn       |
  LessToken AlexPosn            |
  GreatToken AlexPosn           |
  AndToken AlexPosn             |
  OrToken AlexPosn              |
  NotToken AlexPosn             |
  OpenControlToken AlexPosn     |
  CloseControlToken AlexPosn    |
  LParToken AlexPosn            |
  RParToken AlexPosn            |
  NullToken AlexPosn            |
  SeparatorToken AlexPosn       |
  TypeToken AlexPosn            |
  EndLineToken AlexPosn         |
  VarToken AlexPosn String      |
  AssignToken AlexPosn          |
  StringToken AlexPosn String   |
  IntToken AlexPosn Int
  deriving (Eq, Show)

tokenPosn :: Token -> String
tokenPosn (BoolTypeToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (IntTypeToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (StringTypeToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (ListStringTypeToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (LoopToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (ForToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (DoToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (ConcatToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (TrueToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (FalseToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (CopyToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (RotateToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (EnlargeToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (RightRotateToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (StackToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (EmptyToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (ReflectYToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (ReflectXToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (NegateToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (ConjunctionToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (IfToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (ThenToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (ElseToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (ReturnToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (ShrinkToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (CompareToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (LetToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (InToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (EqualToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (NotEqualToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (AdditionToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (SubtractToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (DivisionToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (ExponentToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (LengthToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (ModuloToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (GreatEqualToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (LessEqualToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (LessToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (GreatToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (SubtileToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (ReadToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (AndToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (OrToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (NotToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (ExponentToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (OpenControlToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (CloseControlToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (LParToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (RParToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (NullToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (SeparatorToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (EndLineToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (TypeToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (VarToken (AlexPn a l c) _) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (AssignToken (AlexPn a l c)) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (StringToken (AlexPn a l c) _) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
tokenPosn (IntToken (AlexPn a l c) _) = ("line: " ++ show(l) ++ "," ++ " column: " ++ show(c))
}