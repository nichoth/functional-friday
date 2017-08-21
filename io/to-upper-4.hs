import Data.Char(toUpper)

-- woa, what is going on here? This program does the same thing basically,
-- but in only one line. `interact` pipes stdin to stdout, but mapped
-- through the given function.
-- The signature is `(String -> String) -> IO ()`. It takes a fn from
-- string to string and returns an IO.

main = interact (map toUpper)

