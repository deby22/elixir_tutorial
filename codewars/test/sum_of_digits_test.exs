defmodule TestSumOfDigits do
  use ExUnit.Case

  test "16", do: assert(SumOfDigits.digital_root(16) == 7)
  test "456", do: assert(SumOfDigits.digital_root(456) == 6)
end
