defmodule SumMix do
  def sumMin(list) do
    list |> Enum.map(&convert/1) |> Enum.sum()
  end

  def convert(num) when is_integer(num), do: num
  def convert(num), do: String.to_integer(num)

  # TIL
  # Enum.map(fn x -> convert(x) end)
  # could be replaced by
  # Enum.map(&convert/1)
end
