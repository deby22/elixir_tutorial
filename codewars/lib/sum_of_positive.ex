defmodule Solution do
  def positive_sum(arr) do
    arr |> Enum.filter(fn x -> x > 0 end) |> Enum.sum()
  end
end
