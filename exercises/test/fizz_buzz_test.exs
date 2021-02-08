defmodule FizzBuzzTest do
  use ExUnit.Case

  setup _context do
    {:ok,
     [
       expected_result: [
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
     ]}
  end

  test "test fizzbuzz by pipes", context do
    assert FizzBuzzByPipes.fizz_buzz(15) == context[:expected_result]
  end

  test "test fizzbuzz by cond", context do
    assert FizzBuzzByCond.fizz_buzz(15) == context[:expected_result]
  end

  test "test fizzbuzz by guards", context do
    assert FizzBuzzByGuards.fizz_buzz(15) == context[:expected_result]
  end
  test "test fizzbuzz by if", context do
    assert FizzBuzzByIf.fizz_buzz(15) == context[:expected_result]
  end
end
