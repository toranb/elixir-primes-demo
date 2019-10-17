defmodule DemoWeb.PageController do
  use DemoWeb, :controller

  alias Demo.Primes

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def calculate(conn, %{"number" => number}) do
    integer = String.to_integer(number)
    x = Primes.get_primes(integer)
    x |> IO.inspect()

    render(conn, "calculate.html")
  end
end
