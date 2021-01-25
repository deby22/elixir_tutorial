defmodule HighestAndLowest do
  def high_and_low(s) do
    nums = s |> String.split(" ") |> Enum.map(fn x -> String.to_integer(x) end)
    "#{Enum.max(nums)} #{Enum.min(nums)}"
  end
end

