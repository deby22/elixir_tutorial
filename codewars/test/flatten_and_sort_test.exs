defmodule TestFlattenAndSort do
  use ExUnit.Case

  test "basic cases" do
    assert FlattenAndSort.solution([[]]) == []
    assert FlattenAndSort.solution([[1]]) == [1]
    assert FlattenAndSort.solution([[1, 2]]) == [1, 2]
    assert FlattenAndSort.solution([[], []]) == []
    assert FlattenAndSort.solution([[], [1]]) == [1]
    assert FlattenAndSort.solution([[1], [2]]) == [1, 2]
  end

  test "more advanced cases" do
    assert FlattenAndSort.solution([[10, -10], [0]]) == [-10, 0, 10]
    assert FlattenAndSort.solution([[4, 3, 2, 1]]) == [1, 2, 3, 4]
    assert FlattenAndSort.solution([[4, 3], [1, 2]]) == [1, 2, 3, 4]
    assert FlattenAndSort.solution([[], [1], [], [3, 2]]) == [1, 2, 3]
  end
end
