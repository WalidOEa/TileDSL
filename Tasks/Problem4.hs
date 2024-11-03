import Data.List.Split
import Data.List

main = do
        putStrLn (unlines $ concatRow $ stackRow 0 tile1 tile2 tile3)

-- i -> row, j -> col
stackRow :: Int -> [ String ] -> [ String ] -> [ String ] -> [[ String ]]
stackRow 50 t1 t2 t3 = []
stackRow i t1 t2 t3 = transpose (createRow i 0 t1 t2 t3) ++ stackRow (i + 1) t1 t2 t3

createRow :: Int -> Int -> [ String ] -> [ String ] -> [ String ] -> [[ String ]]
createRow i 50 t1 t2 t3 = []
createRow i j t1 t2 t3 | (i + j) < 50 && j < 25 = conjunction t1 (negateTile t3) : createRow i (j + 1) t1 t2 t3
                       | i <= j && j >= 25 = conjunction t2 (negateTile t3) : createRow i (j + 1) t1 t2 t3
                       | otherwise = blank t1 : createRow i (j + 1) t1 t2 t3
                           where blank tile = generateEmpty tile

conjunction :: [ String ] -> [ String ] -> [ String ]
conjunction xs ys = cleanTile $ format (length $ head xs) xs (zipWith (\x y -> pairs x y) t1 t2) where
        t1 = concat xs
        t2 = concat ys
        pairs x y 
            | x == y && x == '1' = '1'
            | otherwise = '0'

negateTile :: [ String ] -> [ String ]
negateTile [] = []
negateTile (x:xs) = map (\y -> switch y) x : negateTile xs where
        switch y 
           | y == '1' = '0'
           | otherwise = '1'
 
generateEmpty :: [ String ] -> [ String ]
generateEmpty tile = replicate len (concat $ replicate len "0") 
                    where len = length $ head tile

format :: Int -> [ String ] -> String -> String
format n tile "" = ""
format n tile (x:xs) | n > 0 = x : format (n - 1) tile xs
                     | otherwise = "\n" ++ format len tile (x:xs)
                       where len = length $ head tile1

concatRow :: [[ String ]] -> [ String ]
concatRow [] = []
concatRow (x:xs) = concat x : concatRow xs

cleanTile :: String -> [ String ]
cleanTile tile = splitOn "\n" tile

tile1 = cleanTile "11\n00"
tile2 = cleanTile "00\n11"
tile3 = cleanTile "01\n10"