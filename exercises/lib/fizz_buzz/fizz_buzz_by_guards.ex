defmodule FizzBuzzByGuards do
  def fizz_buzz(n) do
    Enum.map(1..n, &replace_word/1)
  end

  defp replace_word(number) when rem(number, 15) == 0, do: "fizzbuzz"
  defp replace_word(number) when rem(number, 5) == 0, do: "buzz"
  defp replace_word(number) when rem(number, 3) == 0, do: "fizz"
  defp replace_word(number), do: number
end
