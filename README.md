# functional friday

This is where we learn about Haskell on friday evenings. As a learning project we can make a client for the SSB network.

## send a message on the ssb network

* how do you use command line args?
* how do you parse and encode json?
* how to send a network request?


## questions and stuff

Input is read lazily, meaning that a file is only buffered as it is needed, not all at once. This looks like a stream in node, but seems more baked into the language here. I think this means that *backpressure* is also the default, since the speed at which the input is buffered depends on the speed of it being processed.



