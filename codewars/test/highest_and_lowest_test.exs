defmodule HighestAndLowestTest do
  use ExUnit.Case

  test "Sample tests" do
    Enum.each(
      [
        {"4 5 29 54 4 0 -214 542 -64 1 -3 6 -6", "542 -214"},
        {"10 2 -2 -10", "10 -10"},
        {"1 1 0", "1 0"},
        {"-1 -1 0", "0 -1"},
        {"42", "42 42"}
      ],
      fn {s, exp} ->
        act = HighestAndLowest.high_and_low(s)
        assert act == exp
      end
    )
  end
end
