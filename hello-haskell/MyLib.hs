module MyLib (dirList) where

import System.Directory (listDirectory)

dirList :: IO ()
dirList = do
    contents <- listDirectory "."
    print contents
