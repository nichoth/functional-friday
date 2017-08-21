import Data.Char(toUpper)

-- the last one with `gGetContents` is kind of boilerplate-y.
-- So check this out -- our program is a composition of `map toUpper` and
-- `writeFile`
-- `writeFile` is lazy too, so our program here has *backpressure*!

main = do
    inpStr <- readFile "input.txt"
    writeFile "output.txt" (map toUpper inpStr)


