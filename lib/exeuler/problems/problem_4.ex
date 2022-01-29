defmodule ExEuler.Problem4 do
  defp gen_max(digits), do: List.duplicate(9, digits) |> Enum.join() |> String.to_integer()
  defp is_palindrome(s), do: s == s |> String.reverse()

  def solve(digits) do
    m = gen_max(digits)

    for(x <- m..1, y <- m..1, x <= y, do: {x, y})
    |> Stream.map(fn {x, y} -> (x * y) |> Integer.to_string() end)
    |> Enum.find(&is_palindrome/1)
  end
end
