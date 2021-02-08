defmodule FizzBuzzByIf do
  def fizz_buzz(n) do
    Enum.map(1..n, &replace_word/1)
  end

  defp replace_word(num) do
    if rem(num, 15) == 0 do
      "fizzbuzz"
    else
      if rem(num, 3) == 0 do
        "fizz"
      else
        if rem(num, 5) == 0 do
          "buzz"
        else
          num
        end
      end
    end
  end
end
