defmodule ExEulerTest do
  use ExUnit.Case

  test "problem 1" do
    # assert ExEuler.Problem1.solve(10) == 23
    # ExEuler.Problem1.solve(1000) |> IO.inspect()
  end

  test "problem 2" do
    # assert ExEuler.Problem2.solve(90) == 44
    # ExEuler.Problem2.solve(4_000_000) |> IO.inspect()
  end

  test "problem 3" do
    ExEuler.Problem3.solve(600_851_475_143) |> IO.inspect()
  end
end
