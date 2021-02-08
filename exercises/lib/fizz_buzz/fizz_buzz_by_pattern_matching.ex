defmodule FizzBuzzByPatternMatching do
  def fizz_buzz(n) do
    replace_word = fn
      0, 0, _ -> "fizzbuzz"
      0, _, _ -> "fizz"
      _, 0, _ -> "buzz"
      _, _, n -> n
    end

    1..n |> Enum.map(fn x -> replace_word.(rem(x, 3), rem(x, 5), x) end)
  end
end
