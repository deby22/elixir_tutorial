defmodule Codewars.Maximizator do
  def super_size(n) do
    n
    |> to_string
    |> String.to_charlist()
    |> Enum.sort(:desc)
    |> to_string
    |> String.to_integer()
  end
end
