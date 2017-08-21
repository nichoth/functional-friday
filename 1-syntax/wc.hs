-- count the number of lines in the input

-- ? interact
--   interact :: (String -> String) -> IO ()
-- ? show  show :: Show a => a -> String
-- ? lines
main = interact wordCount
    where wordCount input = show (length (lines input)) ++ "\n"


-- you can write a type explicitly
-- use `::`
-- 'a' :: Char


-- apply a function by writing the name followed by args
-- odd 3  -- returns True
-- compare 2 3

-- side effects
-- If a function has side effects, we can tell by reading its type signature.
-- The type of the function's result will begin with `IO`
-- see type of readFile
-- :t readFile
-- FilePath -> IO String


-- indentation matters
-- It continues an existing definition.
-- if n is zero or xs is null, then return xs
-- else recursively drop stuff
myDrop n xs = if n <= 0 || null xs
    then xs
    else myDrop (n - 1) (tail xs)


-- polymorphic types
-- lists are polymorphic
-- last :: [a] -> a
-- a is a type variable
-- type variables are always lowercase, to distinguish them from
-- types, which are always uppercase
-- A parameterized type in Haskell is similar to a type variable in
-- Java generics



