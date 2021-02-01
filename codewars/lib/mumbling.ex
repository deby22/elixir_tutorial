defmodule Mumbling do
  def accum(s) do
    s
    |> String.graphemes()
    |> Enum.with_index(1)
    |> Enum.map(fn {letter, index} ->
      String.duplicate(letter, index) |> String.capitalize()
    end)
    |> Enum.join("-")
  end
end
