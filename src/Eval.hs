module Eval where

import Grammar
import Data.List
import Data.List.Split

data Frame = HSequence Expr Environment | SequenceH Expr
           | HConcat Expr Environment | ConcatH Expr
           | HCopy Expr Environment | CopyH Expr
           | HLoop Expr Environment | LoopH Expr
           | HRotateR Expr Environment | RotateRH Expr
           | HEnlarge Expr Environment | EnlargeH Expr 
           | HLength String Environment | LengthH String
           | HStack Expr Environment | StackH Expr | HEmpty Environment
           | HReflectY Environment | HReflectX Environment | HNegate Environment
           | HConjunction Expr Environment | ConjunctionH Expr
           | HEqual Expr Environment | EqualH Expr
           | HNotEqual Expr Environment | NotEqualH Expr
           | HLess Expr Environment | LessH Expr
           | HGreat Expr Environment | GreatH Expr
           | HLessEqual Expr Environment | LessEqualH Expr
           | HGreatEqual Expr Environment | GreatEqualH Expr
           | HAdd Expr Environment | AddH Expr | HMinus Expr Environment | MinusH Expr
           | HDiv Expr Environment | DivH Expr | HTimes Expr Environment | TimesH Expr
           | HPower Expr Environment | PowerH Expr | HMod Expr Environment | ModH Expr
           | HBranch Expr Expr Environment | HLet String TLType Expr Environment
           | HForLoop String String TLType Expr Expr String Expr Environment | ForLoopH String String TLType Expr Expr String Expr
           | HAnd Expr Environment | AndH Expr | HOr Expr Environment | OrH Expr
           | HSubtile Expr Expr Expr Environment | SubtileH Expr Expr Expr Environment
           | SubtileH1 Expr Expr Expr Environment | SubtileH2 Expr Expr Expr
           | HShrink Expr Environment | ShrinkH Expr
           | HCompare Expr Environment | CompareH Expr | NotH Environment
           deriving (Show, Eq)

type Kontinuation = [ Frame ]
type Config = (Expr, Environment, Kontinuation) 

isValue :: Expr -> Bool
isValue (Str _) = True
isValue TLTrue = True
isValue TLFalse = True
isValue (Int _) = True
isValue (ListStr _) = True 
isValue _ = False

getValueBinding :: String -> Environment -> Expr
getValueBinding x [] = error "Evaluator -> Variable binding not found"
getValueBinding x ((y,e):env) | x == y = e
                              | otherwise = getValueBinding x env

update :: Environment -> String -> Expr -> Environment
update env x e = (x,e) : env

unparse :: Expr -> [String] 
unparse (ListStr []) = []
unparse (Str s) = [s]
unparse (TLTrue) = ["True"]
unparse (TLFalse) = ["False"]
unparse (Int n) = [show n]
unparse (ListStr (x:xs)) = unparse (Str x) ++ unparse (ListStr xs)
unparse _ = error "Evaluator -> Expression does not terminate"

evalLoop :: Expr -> Expr 
evalLoop e = evalLoop' (e,[],[])
  where evalLoop' (e,env,k) = if (e' == e) && (isValue e') && (null k) then e' else evalLoop' (e',env',k')
                       where (e',env',k') = eval1 (e,env,k) 

eval1 :: Config -> Config
-- Terminated evaluations
eval1 (v,env,[]) | isValue v = (v,env,[])
eval1 ((Var x),env,k) = (getValueBinding x env, env, k)

-- Sequence
eval1 ((Sequence e1 e2), env, k) = (e1, env, (HSequence e2 env):k)
eval1 ((Str s), env1, (HSequence e2 env):k) = (Concat (Str s) e2, env1, k)

-- Concatenation
eval1 ((Concat e1 e2), env, k) = (e1, env, (HConcat e2 env):k)
eval1 ((Str str1), env1, (HConcat e env2):k) = (e, env2, (ConcatH (Str str1)):k)
eval1 ((Str str2), env, (ConcatH (Str str1)):k) = (Str (concat' str1 str2), [], k )

-- Duplication
eval1 ((Copy e1 e2), env, k) = (e1, env, (HCopy e2 env):k)
eval1 ((Int n), env1, (HCopy e2 env2):k) = (e2, env2, (CopyH (Int n)):k)
eval1 ((Str str), env1, (CopyH (Int n):k)) = (Str (rep' n str), [], k)

-- Loop
eval1 ((Loop e1 e2), env, k) = (e1, env, (HLoop e2 env):k)
eval1 ((Int n), env1, (HLoop e env2):k) = (e, env2, (LoopH (Int n)):k)
eval1 ((ListStr str), env1, (LoopH (Int n)):k) = ((loop n (ListStr str)), [], k)
eval1 ((Str str), env1, (LoopH (Int n)):k) = ((loop n (Str str)), [], k)

-- Rotate right
eval1 ((RotateR e1 e2), env, k) = (e1, env, (HRotateR e2 env):k)
eval1 ((Int n), env1, (HRotateR e env2):k) = (e, env2, (RotateRH (Int n)):k)
eval1 ((Str str), env1, (RotateRH (Int n)):k) = (Str (rotateR n str), [], k)

-- Enlarge
eval1 ((Enlarge e1 e2), env, k) = (e1, env, (HEnlarge e2 env):k)
eval1 ((Int n), env1, (HEnlarge e env2):k) = (e, env2, (EnlargeH (Int n)):k)
eval1 ((Str str), env1, (EnlargeH (Int n)):k) = (Str (enlarge n str), [], k)

-- Stack
eval1 ((Stack e1 e2), env, k) = (e1, env, (HStack e2 env):k)
eval1 ((Str str), env1, (HStack e env2):k) = (e, env2, (StackH (Str str)):k)
eval1 ((Str str2), env, (StackH (Str str1)):k) = (Str (str1 ++ ("\\n" ++ str2)), [], k)

-- Generate empty tile
eval1 ((Empty e), env, k) = (e, env, (HEmpty env):k)
eval1 ((Str str), env1, (HEmpty env2:k)) = (Str (genEmpty str),[],k)

-- Reflect Y
eval1 ((ReflectY e), env, k) = (e, env, (HReflectY env):k)
eval1 ((Str str), env1, (HReflectY env2):k) = (Str (reflectY str),[],k)

-- Reflect X
eval1 ((ReflectX e), env, k) = (e, env, (HReflectX env):k)
eval1 ((Str str), env1, (HReflectX env2):k) = (Str (reflectX str),[],k)

-- Negate
eval1 ((Negate e), env, k) = (e, env, (HNegate env):k)
eval1 ((Str str), env1, (HNegate env2):k) = (Str (negateTile str),[],k) 

-- Conjunction
eval1 ((Conjunction e1 e2), env, k) = (e1, env, (HConjunction e2 env):k)
eval1 ((Str str), env1, (HConjunction e env2):k) = (e, env2, (ConjunctionH (Str str)):k)
eval1 ((Str str2), env, (ConjunctionH (Str str1)):k) = (Str (conjunct str1 str2),[],k)

-- Subtile
eval1 ((Subtile x y z e), env, k) = (x, env, (HSubtile y z e env):k)
eval1 ((Int x), env1, (HSubtile y z e env):k) = (y, env, (SubtileH (Int x) z e env):k)
eval1 ((Int y), env1, (SubtileH x z e env):k) = (z, env, (SubtileH1 x (Int y) e env):k)
eval1 ((Int z), env1, (SubtileH1 x y e env):k) = (e, env, (SubtileH2 x y (Int z)):k)
eval1 ((Str str), env1, (SubtileH2 (Int x) (Int y) (Int z)):k) = (Str (getSubtile x y z str), [], k)

-- Length of tile
eval1 ((Length e1 e2), env, k) = (e2, env, (HLength e1 env):k)
eval1 ((Str str), env, (HLength hOrW env1:k)) = (Int (lengthTile hOrW str), [], k)

-- Branching
eval1 ((Branch e1 e2 e3), env, k) = (e1, env, (HBranch e2 e3 env):k)
eval1 (TLTrue, env1, (HBranch e2 e3 env2):k) = (e2, env2, k)
eval1 (TLFalse, env1, (HBranch e2 e3 env2):k) = (e3, env2, k)

-- Let declaration
eval1 ((Let x t e1 e2), env, k) = (e1, env, (HLet x t e2 env):k)
eval1 ((Str s), env1, (HLet x t e env2):k) = (e, update env2 x (Str s), k)
eval1 ((Int n), env1, (HLet x t e env2):k) = (e, update env2 x (Int n), k)

-- Shrink
eval1 ((Shrink e1 e2), env, k) = (e1, env, (HShrink e2 env):k)
eval1 ((Int n), env1, (HShrink e env2):k) = (e, env2, (ShrinkH (Int n)):k)
eval1 ((Str str), env, (ShrinkH (Int n)):k) = (Str (shrink n str), [], k)

-- Compare tiles
eval1 ((Compare e1 e2), env, k) = (e1, env, (HCompare e2 env):k)
eval1 ((Str str), env1, (HCompare e env2):k) = (e, env2, (CompareH (Str str)):k)
eval1 ((Str str2), env, (CompareH (Str str1)):k) | compareTile str1 str2 == True = (TLTrue, [], k)
                                                 | otherwise = (TLFalse, [], k)

-- For loop
eval1 ((ForLoop x v t e1 e2 y e3), env, k) = (e1, env, (HForLoop x v t e1 e2 y e3 env):k)
eval1 ((Int n), env, (HForLoop x v t e1 e2 y e3 env1):k) = (e2, (update env1 v (Int n)), (HForLoop x v t (Int n) e2 y e3 (update env1 v (Int n))):k)
eval1 (TLTrue, env, (HForLoop x v t e1 e2 y e3 env1):k) = (e3, env1, (HForLoop x v t e1 e2 y e3 env1):k)
eval1 (TLFalse, env, (HForLoop x v t e1 e2 y e3 env1):k) = (e3, env1, k)
eval1 ((Str s), env, (HForLoop x v t (Int n) e2 y e3 env1):k)  | x == "COL" && y == "ASC" = ((Concat (Str s) (ForLoop x v t (Int (n + 1)) e2 y e3)), env1, k)
                                                               | x == "ROW" && y == "ASC" = ((Stack (Str s) (ForLoop x v t (Int (n + 1)) e2 y e3)), env1, k)
                                                               | x == "COL" && y == "DESC" = ((Concat (ForLoop x v t (Int (n - 1)) e2 y e3) (Str s)), env1, k)
                                                               | x == "ROW" && y == "DESC" = ((Stack (ForLoop x v t (Int (n - 1)) e2 y e3) (Str s)), env1, k)
                                                               | otherwise = error "(Evaluator) Invalid Arguments -> Incorrect argument declaration"

-- Comparsion operators
eval1 ((Equal e1 e2), env, k) = (e1, env, (HEqual e2 env):k)
eval1 ((Int n), env1, (HEqual e env2):k) = (e, env2, (EqualH (Int n)):k)
eval1 ((Int m), env, (EqualH (Int n)):k) | n == m = (TLTrue, env, k)
                                         | otherwise = (TLFalse, env, k)
eval1 ((NotEqual e1 e2), env, k) = (e1, env, (HNotEqual e2 env):k)
eval1 ((Int n), env1, (HNotEqual e env2):k) = (e, env2, (NotEqualH (Int n)):k)
eval1 ((Int m), env, (NotEqualH (Int n)):k) | n /= m = (TLTrue, env, k)
                                            | otherwise = (TLFalse, env, k)
eval1 ((Less e1 e2), env, k) = eval1 (e1, env, (HLess e2 env):k)
eval1 ((Int n), env1, (HLess e env2):k) = (e, env2, (LessH (Int n)):k)
eval1 ((Int m), env, (LessH (Int n)):k) | n < m = (TLTrue, env, k)
                                        | otherwise = (TLFalse, env, k)
eval1 ((Great e1 e2), env, k) = (e1, env, (HGreat e2 env):k)
eval1 ((Int n), env1, (HGreat e env2):k) = (e, env2, (GreatH (Int n)):k)
eval1 ((Int m), env, (GreatH (Int n)):k) | n > m = (TLTrue, env, k)
                                         | otherwise = (TLFalse, env, k)
eval1 ((LessEqual e1 e2), env, k) = (e1, env, (HLessEqual e2 env):k)
eval1 ((Int n), env1, (HLessEqual e env2):k) = (e, env2, (LessEqualH (Int n)):k)
eval1 ((Int m), env, (LessEqualH (Int n)):k) | n <= m = (TLTrue, env, k)
                                             | otherwise = (TLFalse, env, k)
eval1 ((GreatEqual e1 e2), env, k) = (e1, env, (HGreatEqual e2 env):k)
eval1 ((Int n), env1, (HGreatEqual e env2):k) = (e, env2, (GreatEqualH (Int n)):k)
eval1 ((Int m), env, (GreatEqualH (Int n)):k) | n >= m = (TLTrue, env, k)
                                              | otherwise = (TLFalse, env, k)
-- Arithmetic operators
eval1 ((Add e1 e2), env, k) = (e1, env, (HAdd e2 env):k)
eval1 ((Int n), env1, (HAdd e env2):k) = (e, env2, (AddH (Int n)):k)
eval1 ((Int m), env, (AddH (Int n)):k) = (Int (n + m), [], k)

eval1 ((Minus e1 e2), env, k) = (e1, env, (HMinus e2 env):k)
eval1 ((Int n), env1, (HMinus e env2):k) = (e, env2, (MinusH (Int n)):k)
eval1 ((Int m), env, (MinusH (Int n)):k) = (Int (n - m), [], k)

eval1 ((Div e1 e2), env, k) = (e1, env, (HDiv e2 env):k)
eval1 ((Int n), env1, (HDiv e env2):k) = (e, env2, (DivH (Int n)):k)
eval1 ((Int m), env, (DivH (Int n)):k) = (Int (div n m), [], k)

eval1 ((Times e1 e2), env, k) = (e1, env, (HTimes e2 env):k)
eval1 ((Int n), env1, (HTimes e env2):k) = (e, env2, (TimesH (Int n)):k)
eval1 ((Int m), env, (TimesH (Int n)):k) = (Int (n * m), [], k)

eval1 ((Power e1 e2), env, k) = (e1, env, (HPower  e2 env):k)
eval1 ((Int n), env1, (HPower  e env2):k) = (e, env2, (PowerH (Int n)):k)
eval1 ((Int m), env, (PowerH (Int n)):k) = (Int (n ^ m), [], k)

eval1 ((Mod e1 e2), env, k) = (e1, env, (HMod e2 env):k)
eval1 ((Int n), env1, (HMod e env2):k) = (e, env2, (ModH (Int n)):k)
eval1 ((Int m), env, (ModH (Int n)):k) = (Int (mod n m), [], k)

-- Logical operators
eval1 ((And e1 e2), env, k) = (e1, env, (HAnd e2 env):k)
eval1 (TLTrue, env1, (HAnd e2 env2):k) = (e2, env2, (AndH TLTrue):k)
eval1 (TLFalse, env1, (HAnd e2 env2):k) = (TLFalse, env2, k)
eval1 (TLFalse, env, (AndH TLTrue):k) = (TLFalse, env, k)
eval1 (TLTrue, env, (AndH TLTrue):k) = (TLTrue, env, k)

eval1 ((Or e1 e2), env, k) = (e1, env, (HOr e2 env):k)
eval1 (TLTrue, env1, (HOr e2 env2):k) = (e2, env2, (OrH TLTrue):k)
eval1 (TLFalse, env1, (HOr e2 env2):k) = (e2, env2, (OrH TLFalse):k)
eval1 (TLFalse, env, (OrH TLTrue):k) = (TLTrue, env, k)
eval1 (TLTrue, env, (OrH TLFalse):k) = (TLTrue, env, k)
eval1 (TLFalse, env, (OrH TLFalse):k) = (TLFalse, env, k)
eval1 (TLTrue, env, (OrH TLTrue):k) = (TLTrue, env, k)

eval1 ((Not e1), env, k) = (e1, env, (NotH env):k)
eval1 (TLTrue, env1, (NotH env2):k) = (TLFalse, env2, k)
eval1 (TLFalse, env1, (NotH env2):k) = (TLTrue, env2, k)

-- Runtime exceptions
eval1 (e, env, k) = error "Evaluator -> Evaluation error"

compareTile :: String -> String -> Bool
compareTile xs ys = compareTile' (splitStr xs) (splitStr ys)

compareTile' :: [String] -> [String] -> Bool
compareTile' [] [] = True
compareTile' xs [] = False
compareTile' [] ys = False
compareTile' (x:xs) (y:ys) | x == y = True && compareTile' xs ys
                           | otherwise = False

shrink :: Int -> String -> String
shrink n xs = intercalate "\\n" $ shrink' n n (splitStr xs)

shrink' :: Int -> Int -> [String] -> [String]
shrink' n c [] = []
shrink' n 1 (x:xs) = shrink'' n n x : shrink' n n xs
shrink' n c (x:xs) = shrink' n (c-1) xs

shrink'' :: Int -> Int -> String -> String
shrink'' n c [] = []
shrink'' n 1 (x:xs) = x : shrink'' n n xs
shrink'' n c (x:xs) = shrink'' n (c-1) xs

lengthTile :: String -> String -> Int
lengthTile x tile | x == "H" = length clean
                  | x == "W" = length $ head clean
                  | otherwise = error "(Evaluator) Invalid Arguments -> Incorrect argument declaration"
                      where clean = clean_e tile

getSubtile :: Int -> Int -> Int -> String -> String
getSubtile x y z tile | x < len_H && y < len_W = intercalate "\\n" $ dropCol y z (take z (drop x clean))    
                      | otherwise = error "(Evaluator) Invalid Arguments -> Exceeds tile size"     
                                     where clean = clean_e tile
                                           len_H = length clean 
                                           len_W = length $ head clean      

dropCol :: Int -> Int -> [ String ] -> [ String ]
dropCol col len [] = []
dropCol col len (x:xs) = take len (drop col x) : dropCol col len xs

conjunct :: String -> String -> String
conjunct xs ys = intercalate "\\n" (conjunct' (clean_e xs) (clean_e ys))

extractBool :: Config -> Expr
extractBool (a, b, c) = a

conjunct' :: [String] -> [String] -> [String]
conjunct' [] _ = []
conjunct' (x:xs) (y:ys) = [if a == b && a == '1' then '1' else '0' | (a,b) <- zip x y] : conjunct' xs ys

negateTile :: String -> String
negateTile xs = intercalate "\\n" (negateTile' (clean_e xs))

negateTile' :: [ String ] -> [ String ]
negateTile' [] = []
negateTile' (x:xs) = map (\y -> switch y) x : negateTile' xs where
        switch y 
           | y == '1' = '0'
           | otherwise = '1'

reflectY :: String -> String
reflectY xs = intercalate "\\n" (map reverse (clean_e xs))

reflectX :: String -> String
reflectX xs = intercalate "\\n" (reverse (clean_e xs))
 
genEmpty :: String -> String
genEmpty tile = intercalate "\\n" (genEmpty' (clean_e tile))

genEmpty' :: [ String ] -> [ String ]
genEmpty' tile = replicate i . replicate j $ '0'
                  where i = length tile
                        j = length $ head tile

splitStr :: String -> [String]
splitStr xs = splitOn "\\n" xs

enlarge :: Int -> String -> String
enlarge n xs = intercalate "\\n" $ concatMap (replicate n) ((enlarge' n (splitStr xs)))

enlarge' :: Int -> [ String ] -> [ String ]
enlarge' n [] = []
enlarge' n (x:xs) = (concatMap (\y -> replicate n y) x) : enlarge' n xs

rotateR :: Int -> String -> String
rotateR n xs | n == 90 = "\\n" ++ (intercalate "\\n" $ (map reverse . transpose) (clean_e xs))
             | n == 270 = rotateR 90 (rotateR 90 (rotateR 90 xs))
             | n == 180 = rotateR 90 (rotateR 90 xs)
             | n == 0 = xs
             | otherwise = error "(Evaluator) Invalid Arguments -> Must be in increments of 90"

loop :: Int -> Expr -> Expr 
loop n e = ListStr (loop' n e e)

loop' :: Int -> Expr -> Expr -> [String]
loop' n (Str e) (Str f) | n == 0 = []
                        | n > 0 = e : loop' (n - 1) (Str e) (Str e) 
                        | otherwise = error "(Evaluator) Invalid Arguments -> Loop counter invalid"
loop' n (ListStr (x:xs)) (ListStr []) | n == 0 = []
                                      | n > 0 = loop' (n-1) (ListStr (x:xs)) (ListStr (x:xs))                 
loop' n (ListStr (x:xs)) (ListStr (y:ys)) | n == 0 = []
                                          | n > 0 = y : loop' (n) (ListStr (x:xs)) (ListStr (ys)) 
                                          | otherwise = error "(Evaluator) Invalid Arguments -> Loop counter invalid"

concat' :: String -> String -> String
concat' a b = intercalate "\\n" (zipWith (++) (clean a) (clean b))
              where clean x = filter ((>0) . length) (splitOn "\\n" x)

clean_e :: String -> [String]
clean_e x = map (filter (/='"')) (filter ((>0) . length) (splitOn "\\n" x))

rep' :: Int -> String -> String
rep' 1 a = a 
rep' n a = concat' a (rep' (n-1) a)