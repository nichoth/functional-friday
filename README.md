# functional friday

This is where we learn about Haskell on friday evenings. As a learning project we can make a client for the SSB network.

## send a message on the ssb network

* how do you use command line args?
* how do you parse and encode json?
* how to send a network request?


## questions and stuff

Input is read lazily, meaning that a file is only buffered as it is needed, not all at once. This looks like a stream in node, but seems more baked into the language here. I think this means that *backpressure* is also the default, since the speed at which the input is buffered depends on the speed of it being processed.

----------------------------------------

The syntax for converting between IO and values is terse. This code prints the command line args. The type of `putStrLn` is `putStrLn :: String -> IO ()`. The type of `getArgs` is `getArgs :: IO [String]`. So `putStrLn` takes a string, but `getArgs` returns an IO of strings. `=<<` takes the IO action and gets the value and sends it to `putStrLn`. What happens if there is an error? Would `getArgs` need a different type signature?

```haskell
main = do
    mapM_ putStrLn =<< getArgs
```

The JS equivalent I think would be like

```js
    getArgs(args => console.log(args))
```

