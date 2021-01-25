# TODO: Replace examples and use TDD development by writing your own tests

defmodule OppositeTest do
  use ExUnit.Case

  test "returns a number's opposite" do
    assert Opposite.opposite(1) === -1
  end
end
