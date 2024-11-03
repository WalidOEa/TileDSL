module Types where 
import Grammar

type TypeEnvironment = [(String, TLType)]

addBinding :: String -> TLType -> TypeEnvironment -> TypeEnvironment
addBinding x t tenv = (x,t):tenv

getBinding :: String -> TypeEnvironment -> TLType
getBinding x [] = error "Types -> Variable binding not found"
getBinding x ((y,t):tenv) | x == y = t
                          | otherwise = getBinding x tenv

typeOf :: TypeEnvironment -> Expr -> TLType
typeOf tenv (Int _) = TLInt
typeOf tenv (Var x) = getBinding x tenv
typeOf tenv (ListStr _) = TLListString
typeOf tenv (TLFalse) = TLBool
typeOf tenv (TLTrue) = TLBool
typeOf tenv (Str _) = TLString
typeOf tenv _ = error "Types -> Invalid types"

typeOf tenv (Mod e1 e2) | (TLInt, TLInt) == (typeOf tenv e1, typeOf tenv e2) = TLInt
typeOf tenv (Power e1 e2) | (TLInt, TLInt) == (typeOf tenv e1, typeOf tenv e2) = TLInt
typeOf tenv (Times e1 e2) | (TLInt, TLInt) == (typeOf tenv e1, typeOf tenv e2) = TLInt
typeOf tenv (Div e1 e2) | (TLInt, TLInt) == (typeOf tenv e1, typeOf tenv e2) = TLInt
typeOf tenv (Minus e1 e2) | (TLInt, TLInt) == (typeOf tenv e1, typeOf tenv e2) = TLInt
typeOf tenv (Add e1 e2) | (TLInt, TLInt) == (typeOf tenv e1, typeOf tenv e2) = TLInt

typeOf tenv (Not e1) | TLBool == typeOf tenv e1 = TLBool
typeOf tenv (Or e1 e2) | (TLBool, TLBool) == (typeOf tenv e1, typeOf tenv e2) = TLBool
typeOf tenv (And e1 e2) | (TLBool, TLBool) == (typeOf tenv e1, typeOf tenv e2) = TLBool

typeOf tenv (GreatEqual e1 e2) | (TLInt, TLInt) == (typeOf tenv e1, typeOf tenv e2) = TLBool
typeOf tenv (Great e1 e2) | (TLInt, TLInt) == (typeOf tenv e1, typeOf tenv e2) = TLBool
typeOf tenv (LessEqual e1 e2) | (TLInt, TLInt) == (typeOf tenv e1, typeOf tenv e2) = TLBool
typeOf tenv (Less e1 e2) | (TLInt, TLInt) == (typeOf tenv e1, typeOf tenv e2) = TLBool
typeOf tenv (NotEqual e1 e2) | (TLInt, TLInt) == (typeOf tenv e1, typeOf tenv e2) = TLBool
typeOf tenv (Equal e1 e2) | (TLInt, TLInt) == (typeOf tenv e1, typeOf tenv e2) = TLBool

typeOf tenv (Length e1 e2) | (TLString) == (typeOf tenv e2) = TLInt
typeOf tenv (Subtile e1 e2 e3 e4) | (TLInt, TLInt, TLInt, TLString) == (typeOf tenv e1, typeOf tenv e2, typeOf tenv e3, typeOf tenv e4) = TLString
typeOf tenv (ForLoop e1 e2 t e3 e4 e5 e6) | t == t1 = typeOf (addBinding e2 t tenv) e6 
                                              where t1 = typeOf tenv e3

typeOf tenv (Loop e1 e2) | (TLInt, TLString) == (typeOf tenv e1, typeOf tenv e2) = TLString
typeOf tenv (Let e1 t e2 e3) | t == t1 = typeOf (addBinding e1 t tenv) e3
                                 where t1 = typeOf tenv e2
typeOf tenv (Branch e1 e2 e3) | (TLBool, TLString, TLString) == (typeOf tenv e1, typeOf tenv e2, typeOf tenv e3) = TLString
                              | (TLBool, TLInt, TLInt) == (typeOf tenv e1, typeOf tenv e2, typeOf tenv e3) = TLInt 

typeOf tenv (Conjunction e1 e2) | (TLString, TLString) == (typeOf tenv e1, typeOf tenv e2) = TLString
typeOf tenv (Negate e1) | (TLString) == (typeOf tenv e1) = TLString
typeOf tenv (ReflectX e1) | (TLString) == (typeOf tenv e1) = TLString
typeOf tenv (ReflectY e1) | (TLString) == (typeOf tenv e1) = TLString
typeOf tenv (Empty e1) | (TLString) == (typeOf tenv e1) = TLString
typeOf tenv (Stack e1 e2) | (TLString, TLString) == (typeOf tenv e1, typeOf tenv e2) = TLString
typeOf tenv (RotateR e1 e2) | (TLInt, TLString) == (typeOf tenv e1, typeOf tenv e2) = TLString
typeOf tenv (Enlarge e1 e2) | (TLInt, TLString) == (typeOf tenv e1, typeOf tenv e2) = TLString
typeOf tenv (Shrink e1 e2) | (TLInt, TLString) == (typeOf tenv e1, typeOf tenv e2) = TLString
typeOf tenv (Concat e1 e2) | (TLString, TLString) == (typeOf tenv e1, typeOf tenv e2) = TLString
typeOf tenv (Copy e1 e2) | (TLInt, TLString) == (typeOf tenv e1, typeOf tenv e2) = TLString
typeOf tenv (Sequence e1 e2) | (TLString, TLString) == (typeOf tenv e1, typeOf tenv e2) = TLString
typeOf tenv (Shrink e1 e2) | (TLString, TLString) == (typeOf tenv e1, typeOf tenv e2) = TLString
typeOf tenv (Compare e1 e2) | (TLString, TLString) == (typeOf tenv e1, typeOf tenv e2) = TLBool

typeOf tenv _ = error "Types -> Type error"

unparseType :: TLType -> String
unparseType TLBool = "Bool"
unparseType TLInt = "Int"
unparseType TLString = "String"
unparseType TLListString = "[String]"
unparseType _ = error "Types -> Invalid types"








