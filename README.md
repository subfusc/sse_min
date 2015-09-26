# Minimum setup for Server-sent Events

As all guides i found on SSE on rails either
did not work (anymore?) or where overly complex for
just testing the technology, I created this minimum
barebone Rails 4 + Server-sent Events repo as a reference
for me and possibly others.

All it does once started, and you point your browser to localhost
it will start sending a number stream, and increment the number every
10 sec. The 4 commits are only: new rails project, change server,
allow concurrency, create stream controller and belonging javascript
and this doc.

Good Luck.

## Requirements:

Unlike WebSockets, this only requires a server that can do
multi-threading. It is 'Puma' for this example.

## References:

* https://en.wikipedia.org/wiki/Server-sent_events
* http://www.w3.org/TR/eventsource/
* http://caniuse.com/#feat=eventsource
