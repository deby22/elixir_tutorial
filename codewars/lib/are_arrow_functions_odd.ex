defmodule OnlyOdd do
  def odds(nums) do
    nums |> Enum.filter(fn x -> rem(x, 2) == 1 end)
  end
end
