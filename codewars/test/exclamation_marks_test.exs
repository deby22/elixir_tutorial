defmodule TestExclamationMarksSolution do
  use ExUnit.Case

  test "Basic tests" do
    assert ExclamationMarksSolution.remove("Hi!") == "Hi!"
    assert ExclamationMarksSolution.remove("Hi!!!") == "Hi!!!"
    assert ExclamationMarksSolution.remove("!Hi") == "Hi"
    assert ExclamationMarksSolution.remove("!Hi!") == "Hi!"
    assert ExclamationMarksSolution.remove("Hi! Hi!") == "Hi Hi!"
    assert ExclamationMarksSolution.remove("Hi") == "Hi"
  end
end
