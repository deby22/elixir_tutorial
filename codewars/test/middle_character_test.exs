defmodule TestMiddleCharacter do
  use ExUnit.Case
  import Challenge, only: [get_middle: 1]

  test "basic tests" do
    assert get_middle("test") == "es"
    assert get_middle("testing") == "t"
  end
end
