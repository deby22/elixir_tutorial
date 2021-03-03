defmodule TestCountBits do
  use ExUnit.Case

  test "counts the number of bits" do
    assert CountBits.bits(0) == 0
    assert CountBits.bits(4) == 1
    assert CountBits.bits(7) == 3
    assert CountBits.bits(9) == 2
    assert CountBits.bits(10) == 2
  end
end
