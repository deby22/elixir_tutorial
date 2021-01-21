defmodule TestCount do
  use ExUnit.Case
  import Count, only: [count_by: 2]

  test "simple cases" do
    assert count_by(1, 5) == [1, 2, 3, 4, 5]
    assert count_by(2, 5) == [2, 4, 6, 8, 10]
  end
end
