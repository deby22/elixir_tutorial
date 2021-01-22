# TODO: Replace examples and use TDD development by writing your own tests

defmodule TestFormTheMinimum do
  use ExUnit.Case

  test "Small vector size" do
    assert FormTheMinimum.minValue([1, 3, 1]) == 13
    assert FormTheMinimum.minValue([4, 5, 4, 7]) == 457
    assert FormTheMinimum.minValue([4, 8, 1, 4]) == 148
    assert FormTheMinimum.minValue([5, 7, 9, 5, 7, 7]) == 579
    assert FormTheMinimum.minValue([6, 7, 8, 7, 6, 6]) == 678
  end
end
