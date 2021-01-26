defmodule HighestAndLowest do
  def high_and_low(s) do
    # My solution
    # nums = s |> String.split(" ") |> Enum.map(fn x -> String.to_integer(x) end)
    # "#{Enum.max(nums)} #{Enum.min(nums)}"
    # TIL: Enum.min_max
    # Best solution on Codewars
    {min, max} =
      s
      |> String.split(" ")
      |> Enum.map(&String.to_integer(&1))
      |> Enum.min_max()

    "#{max} #{min}"
  end
end
