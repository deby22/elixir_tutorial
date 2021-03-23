defmodule TestMilionithFibonacci do
  use ExUnit.Case

  test "Basic Tests" do
    assert Fib.fib(0) == 0
    assert Fib.fib(1) == 1
    assert Fib.fib(2) == 1
    assert Fib.fib(3) == 2
    assert Fib.fib(4) == 3
    assert Fib.fib(5) == 5
  end
end
