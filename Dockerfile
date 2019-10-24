FROM elixir:1.9.1

RUN mix local.hex --force
RUN mix local.rebar --force

COPY . /demo
WORKDIR /demo

RUN mix deps.get && mix compile

CMD mix phx.server
