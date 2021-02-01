defmodule ArrayLeaders do
  def array_leaders(nums), do: array_leaders([], nums)
  def array_leaders(leaders, []), do: Enum.reverse(leaders)

  def array_leaders(leaders, [head | tail]) do
    if head > Enum.sum(tail) do
      array_leaders([head | leaders], tail)
    else
      array_leaders(leaders, tail)
    end
  end
end
