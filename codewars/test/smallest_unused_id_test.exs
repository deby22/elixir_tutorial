defmodule TestOrder do
  use ExUnit.Case
  import Order, only: [next_id: 1]

  test "returns the lowestNextId" do
    assert next_id([0, 1, 2, 3, 5]) == 4
    assert next_id([1, 2, 3, 5]) == 4
    assert next_id([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 11
  end
end
