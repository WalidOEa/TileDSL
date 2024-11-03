module TileReader where

import Data.List
import Data.List.Split
import System.Directory
import Control.Monad 
import Data.Char (isSpace)

readTL :: [FilePath] -> IO [String]
readTL [] = do return []
readTL (x:xs) | isInfixOf ".tl" x =  do tile <- readFile x
                                        tiles <- readTL xs
                                        return (tile : tiles)
              | otherwise = do tiles <- readTL xs
                               return (tiles)

getTLNames :: String -> [FilePath] -> [FilePath]
getTLNames src [] = []
getTLNames src (x:xs) | isInfixOf ".tl" x && isInfixOf (last (splitOn "/" x)) src = x : getTLNames src xs
                      | otherwise = getTLNames src xs

getTLFiles :: [FilePath] -> IO [(FilePath, String)]
getTLFiles [] = do return []
getTLFiles (x:xs) = do tile <- readFile x
                       let clean_tile = lstrip $ rstrip tile
                       tiles <- getTLFiles xs
                       return ((x, clean_tile) : tiles)


getFileName :: FilePath -> [FilePath] -> FilePath
getFileName a [] = error "TileReader -> File not found"
getFileName a (x:xs) | isInfixOf a x = x
                     | otherwise = getFileName a xs

clean :: [ String ] -> [ [ String ]]
clean [] = []
clean (x:xs) = map (filter (/='"')) (filter ((>0) . length) (splitOn "\\n" x)) : clean xs

clean' :: [String] -> [String]
clean' (x:xs) = filter (\y -> y /= '\\' && y /= '"') x : clean' xs

concatRow :: [[ String ]] -> [ String ]
concatRow [] = []
concatRow (x:xs) = concat x : concatRow xs

replaceSrc :: String -> [(FilePath, String)] -> String
replaceSrc src [] = src
replaceSrc src ((f,x):xs) = replaceSrc (replace (last (splitOn "/" f)) (show x) src) xs
                                where replace from to = intercalate to . splitOn from

rstrip = reverse . dropWhile isSpace . reverse
lstrip = dropWhile isSpace