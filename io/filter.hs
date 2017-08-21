
-- this takes stdin and filters it so that only lines containing the
-- character 'a' are printed to stdout

main = interact (unlines . filter (elem 'a') . lines)

-- here the argument to `interact` is the composition of several functions.
-- `.` is the composition operator. `lines` splits the input into a list
-- of lines. `elem 'a'` returns true if 'a' is in a list. `unlines` uses
-- the newline character to join a list of strings.


