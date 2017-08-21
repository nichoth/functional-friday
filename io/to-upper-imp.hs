import System.IO
import Data.Char(toUpper)

{-
 - use `<-` to assign the result of an IO action, and use `let` to
 - assign the result of pure code
 -
 - here `h` stands for 'Handle'. `openFile` returns a file `Handle`
 - The handle is used to perform operations on a file
 -
 - `return` is not like in other languages. It takes a pure value and
 - wraps it in IO. It is the opposite of `<-`. The return value form
 - mainloop is an IO, so this is uses to satisfy the type signature,
 - by returning an IO of an empty tuple
 -
 - -}

main :: IO ()
main = do
    -- `ReadMode` is one of several `IOMode`s defined in System.IO
    inh <- openFile "input.txt" ReadMode
    outh <- openFile "output.txt" WriteMode
    mainloop inh outh
    hClose inh
    hClose outh

mainloop :: Handle -> Handle -> IO ()
mainloop inh outh =
    do ineof <- hIsEOF inh
        if inoef
            then return ()
            else do inpStr <- hGetLine inh
                -- take a handle and string, return IO action
                hPutStrLn outh (map toUpper inpStr)
                mainloop inh outh

-- the recursive call is ok and doesn't put a bunch of stuff on the stack
-- haskell is just good with recursion and you don't have to worry about it

