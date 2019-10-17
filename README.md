# Demo

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

To see the observer and limit the scheduler

```
:observer.start
:erlang.system_flag(:schedulers_online, 1)
```
