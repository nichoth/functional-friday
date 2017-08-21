import System.Environment

-- mapM takes a function and a list. It maps the function over the list,
-- then calls `sequence` on the list.
--
-- `sequence` takes a list of IO actions and returns an IO action
-- that performs those actions in the list in order.

-- print the command line arguments
main = do
    args <- getArgs
    mapM_ putStrLn args



