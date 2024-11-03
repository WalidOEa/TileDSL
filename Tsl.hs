import System.Environment
import System.Directory
import Data.List.Split -- (c) Brent Yorgey Louis Wasserman 2008-2012
import Data.List
import Control.Monad
import Control.Exception
import System.IO

import Tokens
import Grammar
import Types
import Eval
import TileReader

main :: IO ()
main = catch main' noParse

main' :: IO ()
main' = do (filename : _) <- getArgs
           currDir <- getCurrentDirectory
           testFiles <- getDirectoryContents currDir
           src <- readFile filename
           let getTFileNames = getTLNames src testFiles
           files <- getTLFiles getTFileNames
          
           let sub = replaceSrc src (files)
           let tokens = alexScanTokens sub
           let parse = parseTL tokens
           let typedProg = typeOf [] parse

           let prog = evalLoop parse
           putStr (unlines $ concat $ clean $ unparse $ prog)

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()