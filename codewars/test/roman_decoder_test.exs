defmodule TestRomanDecoder do
  use ExUnit.Case

  test "should equals 21" do
    assert RomanDecoder.decode("XXI") == 21
  end

  test "should equals 1" do
    assert RomanDecoder.decode("I") == 1
  end

  test "should equals 4" do
    assert RomanDecoder.decode("IV") == 4
  end

  test "should equals 2008" do
    assert RomanDecoder.decode("MMVIII") == 2008
  end

  test "should equals 1666" do
    assert RomanDecoder.decode("MDCLXVI") == 1666
  end
end
