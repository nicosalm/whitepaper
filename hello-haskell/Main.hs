module Main (main) where

import MyLib (dirList)

main :: IO ()
main = do
    putStrLn "Hello Haskell!"
    dirList
