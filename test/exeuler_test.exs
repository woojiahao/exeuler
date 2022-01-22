defmodule ExEulerTest do
  use ExUnit.Case

  test "problem 1" do
    assert ExEuler.Problem1.solve(10) == 23
    ExEuler.Problem1.solve(1000) |> IO.inspect()
  end
end
