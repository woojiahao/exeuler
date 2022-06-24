defmodule ExEuler.Problem5 do
  defp gcd(a, 0), do: a
  defp gcd(a, b), do: gcd(b, rem(a, b))
  defp lcm(a, b), do: div(a * b, gcd(a, b))

  def solve(n) do
    1..n
    |> Enum.chunk_every(2, 1, :discard)
    |> Enum.with_index()
    |> Enum.reduce(1, fn
      {_, 0}, _ -> lcm(1, 2)
      {[_, y], _}, acc -> lcm(acc, y)
    end)
  end
end
