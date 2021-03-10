defmodule ParenthesesValidator do
  def valid_parentheses(string) do
    string
    |> String.graphemes()
    |> Enum.map(&map_parenthes_to_number/1)
    |> Enum.reduce_while(0, fn x, acc ->
      if acc >= 0, do: {:cont, acc + x}, else: {:halt, acc}
    end)
    |> map_result()
  end

  def map_parenthes_to_number(parenthese) do
    case parenthese do
      "(" -> 1
      ")" -> -1
      _ -> 0
    end
  end

  def map_result(value), do: value == 0
end
