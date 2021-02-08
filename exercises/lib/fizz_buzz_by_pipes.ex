defmodule FizzBuzzByPipes do
  def fizz_buzz(n) do
    1..n
    |> Enum.map(&replace_word(&1, 15, "fizzbuzz"))
    |> Enum.map(&replace_word(&1, 5, "buzz"))
    |> Enum.map(&replace_word(&1, 3, "fizz"))
  end

  defp replace_word(num, divider, word_instead_of_num) when is_integer(num) do
    if rem(num, divider) == 0 do
      word_instead_of_num
    else
      num
    end
  end

  defp replace_word(num, _divider, _word_intead_of_num), do: num
end
