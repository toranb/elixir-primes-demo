```
docker build -t elixir .
```

```
docker run -it -p 80:8000 elixir
```

```
heroku login
heroku container:login
heroku container:push web --app elixirprimes
heroku container:release web --app elixirprimes
```

```
heroku logs --app elixirprimes --tail
```
