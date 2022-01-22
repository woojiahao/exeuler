defmodule ExEuler.Problem1 do
  @behaviour ExEuler.Problem

  @impl ExEuler.Problem
  def solve(n) do
    1..(n - 1) |> Enum.filter(&(rem(&1, 3) == 0 or rem(&1, 5) == 0)) |> Enum.sum()
  end
end
