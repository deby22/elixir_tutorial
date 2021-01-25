defmodule EvenOrOdd do
  def even_or_odd(number) when rem(abs(number), 2) == 1, do: "Odd"
  def even_or_odd(number) when rem(abs(number), 2) == 0, do: "Even"
end
