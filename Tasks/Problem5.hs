import Data.List.Split
import Data.List


main = do
        putStrLn(unlines $ createTile tile1)

createTile :: [ String ] -> [ String ]
createTile tile = subtile1 ++ subtile2 ++ subtile3
                   where subtile1 = transpose $ concat $ replicate 3 (getSubtile 0 0 tile)
                         subtile2 = transpose $ concat $ replicate 3 (getSubtile 2 2 tile)
                         subtile3 = transpose $ concat $ replicate 3 (getSubtile 4 4 tile)

getSubtile :: Int -> Int -> [ String ] -> [ String ]
getSubtile col row tile = dropCol col (take 6 (drop row tile))                        

dropCol :: Int -> [ String ] -> [ String ]
dropCol col [] = []
dropCol col (x:xs) = take 6 (drop col x) : dropCol col xs

cleanTile :: String -> [ String ]
cleanTile tile = splitOn "\n" tile

concatRow :: [[ String ]] -> [ String ]
concatRow [] = []
concatRow (x:xs) = concat x : concatRow xs

tile1 = cleanTile "1100000011\n1100000011\n0011001111\n0011001111\n0000110011\n0000110011\n0011001111\n0011001111\n1111111111\n1111111111"

-- 1100000011
-- 1100000011
-- 0011001111
-- 0011001111
-- 0000110011
-- 0000110011
-- 0011001111
-- 0011001111
-- 1111111111
-- 1111111111
