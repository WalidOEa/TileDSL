chkrBrd :: String -> String -> Int -> String
chkrBrd tile1 tile2 n | n == 0 = []
                      | otherwise = (row ++ (reverse row)) : (chkrBrd tile1 tile2 (n - 1))
                             where row = concat $ replicate 64 (tile1 ++ tile2)

--chkrBrd :: String -> String -> Int -> Int -> String
--chkrBrd tile1 tile2 0 0 = "\n"
--chkrBrd tile1 tile2 0 j = "\n" ++ chkrBrd tile1 tile2 64 (j - 1)
--chkrBrd tile1 tile2 i j | mod j 2 == 0 = (tile1 ++ tile2) ++ (chkrBrd tile1 tile2 (i - 1) j)
--                        | otherwise = (tile2 ++ tile1) ++ (chkrBrd tile1 tile2 (i - 1) j)
