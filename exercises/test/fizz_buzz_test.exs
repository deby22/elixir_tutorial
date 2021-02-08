defmodule FizzBuzzTest do
  use ExUnit.Case

  test "greets the world" do
    expected_result = [
      1,
      2,
      # 3
      "fizz",
      4,
      # 5
      "buzz",
      # 6
      "fizz",
      7,
      8,
      # 9
      "fizz",
      # 10
      "buzz",
      11,
      # 12
      "fizz",
      13,
      14,
      # 15
      "fizzbuzz"
    ]

    assert FizzBuzzByPipes.fizz_buzz(15) == expected_result
    assert FizzBuzzByCond.fizz_buzz(15) == expected_result
  end
end
