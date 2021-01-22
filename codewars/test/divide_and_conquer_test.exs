defmodule TestDivideandConquer do
  use ExUnit.Case

  test "Example Tests" do
    example_tests = [
      {[9, 3, "7", "3"], 2},
      {["5", "0", 9, 3, 2, 1, "9", 6, 7], 14},
      {["3", 6, 6, 0, "5", 8, 5, "6", 2, "0"], 13},
      {["1", "5", "8", 8, 9, 9, 2, "3"], 11},
      {[8, 0, 0, 8, 5, 7, 2, 3, 7, 8, 6, 7], 61}
    ]

    for {r, sol} <- example_tests, do: assert(DefineAndConquer.div_con(r) == sol)
  end
end
