defmodule ExEuler.Problem3 do
  defp factorize(1, _, factors, _), do: factors

  defp factorize(n, i, factors, memory) do
    unless memory |> Enum.any?(&(rem(&1, i) == 0)) do
      u_memory = [i | memory]

      {u_n, count} = repeat(n, i, 0)
      sub_factors = List.duplicate(i, count)

      factorize(u_n, i + 1, factors ++ sub_factors, u_memory)
    else
      factorize(n, i + 1, factors, memory)
    end
  end

  defp repeat(n, i, count) when rem(n, i) == 0, do: repeat(div(n, i), i, count + 1)
  defp repeat(n, _, count), do: {n, count}

  def solve(n), do: factorize(n, 2, [], []) |> Enum.max()
end
