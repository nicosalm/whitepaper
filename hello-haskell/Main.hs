module Main (main) where

import MyLib (dirList)

-- module main, IO action
main :: IO ()

main = do
    putStrLn "Hello Haskell!"
    dirList
