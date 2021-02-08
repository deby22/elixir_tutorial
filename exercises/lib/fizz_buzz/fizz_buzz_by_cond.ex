defmodule FizzBuzzByCond do
  def fizz_buzz(n) do
    Enum.map(1..n, &replace_word/1)
  end

  defp replace_word(n) do
    cond do
      rem(n, 15) == 0 -> "fizzbuzz"
      rem(n, 3) == 0 -> "fizz"
      rem(n, 5) == 0 -> "buzz"
      true -> n
    end
  end
end
