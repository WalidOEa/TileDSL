import Data.List

main = do
        let centreSq = concatRow $ enlarge $ transpose $ concatRow $ enlarge $ constructSquare $ rotateSquare test1
        let baseSq = constructSquare $ rotateSquare test1
        let result = build centreSq baseSq
        putStrLn (unlines result)

rotateSquare :: [ String ] -> [ [ String ] ]
rotateSquare tile = tile : (map reverse tile) : (reverse tile) : (map reverse $ reverse tile) : []

constructSquare :: [ [ String ] ] -> [ String ]
constructSquare tile = [ a ++ b | a <- head tile, b <- tile !! 1, reverse a == b ] ++ lowerQuad
                    where lowerQuad = [ c ++ d | c <- tile !! 2, d <- head $ reverse tile, reverse c == d ]
 
build :: [ String ] -> [ String ] -> [ String ]
build centreSq baseSq = ceilingFloorSq ++ (concatRow $ transpose [sideSq, centreSq, sideSq]) ++ ceilingFloorSq
                where ceilingFloorSq = concatRow $ transpose $ replicate (div maxLen lenBaseSq) baseSq
                      sideSq = concat $ replicate (div lenCentreSq lenBaseSq) baseSq
                      maxLen = lenCentreSq + lenBaseSq * 2
                      lenCentreSq = length $ head centreSq
                      lenBaseSq = length $ head baseSq

enlarge :: [ String ] -> [ [ String ] ]
enlarge [] = []
enlarge (x:xs) = map (\y -> replicate 3 y) x : enlarge xs

concatRow :: [ [ String ] ] -> [ String ]
concatRow [] = []
concatRow (x:xs) = concat x : concatRow xs

test1 = ["0001","0011","0111","1111"]