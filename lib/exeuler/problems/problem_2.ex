defmodule ExEuler.Problem2 do
  @behaviour ExEuler.Problem

  require Integer

  @impl ExEuler.Problem
  def solve(upper) do
    mem = %{0 => 0, 1 => 1}

    Stream.iterate({0, 0}, fn {n, _} -> {n + 1, fib(n, mem)} end)
    |> Enum.take_while(&(elem(&1, 1) < upper))
    |> Enum.map(&elem(&1, 1))
    |> Enum.filter(&Integer.is_even(&1))
    |> Enum.sum()
  end

  defp fib(n, mem) when is_map_key(mem, n), do: mem[n]

  defp fib(n, mem) do
    f = fib(n - 1, mem) + fib(n - 2, mem)
    mem |> Map.put_new(n, f)
    f
  end
end
