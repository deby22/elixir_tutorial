defmodule TestSolution do
  use ExUnit.Case

  test "returns the correct points total" do
    total = TotalPoints.points(["3:1", "2:1", "2:2", "3:3", "4:1", "0:3", "0:4", "0:0", "1:1"])
    assert total == 13
  end
end
