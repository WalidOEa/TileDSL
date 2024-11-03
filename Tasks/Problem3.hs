import Data.List.Split --Remember this package is not included with the standard haskell build 
import Data.List

main = do 
         putStrLn (unlines $ concatRow $ transpose $ constructBase (cleanTile test1) 10)

constructBase :: [ String ] -> Int -> [[ String ]]
constructBase tile 0 = [[]]
constructBase tile n = base ++ (map xReflect base) ++ (constructBase tile (n - 1))
                       where base = (createRow $ tile ++ blank) : (createRow $ yReflect tile ++ xReflect tile) : (createRow $ blank ++ tileXY tile) : []
                             createRow tile = concat $ replicate 30 tile
                             blank = generateEmpty tile

tileXY :: [ String ] -> [ String ]
tileXY tile = xReflect $ yReflect tile

yReflect :: [ String ] -> [ String ]
yReflect [] = []
yReflect (x:xs) = reverse x : yReflect xs

xReflect :: [ String ] -> [ String ]
xReflect tile = transpose $ map reverse $ transpose tile

generateEmpty :: [ String ] -> [ String ]
generateEmpty tile = replicate len (concat $ replicate len "0") 
                    where len = length $ head tile

cleanTile :: String -> [ String ]
cleanTile tile = splitOn "\n" tile

concatRow :: [[ String ]] -> [ String ]
concatRow [] = []
concatRow (x:xs) = concat x : concatRow xs

test1 = "000\n000\n011"

-- 000 ++ 000 ++ 000
-- 000 ++ 000 ++ 000
-- 011 ++ 110 ++ 000
-- 000 ++ 011 ++ 110
-- 000 ++ 000 ++ 000
-- 000 ++ 000 ++ 000

-- 000000000
-- 000000000
-- 011110000
-- 000011110
-- 000000000
-- 000000000