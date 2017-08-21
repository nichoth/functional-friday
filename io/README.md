## io

## stdio

`System.IO` includes three handles, `stdin`, `stdout`, and `stderr`. So a function that opeates on a Handle can operate on a file handle or stdin or whatever. It's a nice abstraction.

## streaming or buffered

So we know how to work with a file. **Are we buffering the whole file, or can haskell stream chunks like in node?** You can also use `hGetContents` to work with files. It takes a handle and returns `IO String`, a string representing all the contents of the file. Haskell does things lazily, so the string, a list of characters, is only read as the characters are processed. It looks like "streaming" is kind of baked in to the compiler.

An interesting thing about `hGetContents` is that the string it returns can be passed to any pure function that takes a string. The recipient function doesn't need to know about IO to use the string. No IO is performed when you call `hGetContents`, it waits until the content is needed. 

