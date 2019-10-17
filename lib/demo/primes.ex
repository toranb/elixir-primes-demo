defmodule Demo.Primes do
  def get_primes(n) when n < 2, do: []
  def get_primes(n), do: Enum.filter(2..n, &is_prime?(&1))

  defp is_prime?(n) when n in [2, 3], do: true

  defp is_prime?(x) do
    start_lim = div(x, 2)

    Enum.reduce(2..start_lim, {true, start_lim}, fn fac, {is_prime, upper_limit} ->
      cond do
        !is_prime ->
          {false, fac}

        fac > upper_limit ->
          {is_prime, upper_limit}

        true ->
          is_prime = rem(x, fac) != 0
          upper_limit = if is_prime, do: div(x, fac + 1), else: fac
          {is_prime, upper_limit}
      end
    end)
    |> elem(0)
  end
end
