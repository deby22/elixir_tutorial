defmodule FormTheMinimum do
  def minValue(numbers) do
    # my solution
    # numbers |> Enum.uniq() |> Enum.sort() |> Enum.join() |> String.to_integer()

    # solution on CodeWars (undigits)
    numbers |> Enum.uniq() |> Enum.sort() |> Integer.undigits()
  end
end
