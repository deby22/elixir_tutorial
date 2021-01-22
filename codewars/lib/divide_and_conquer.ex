defmodule DefineAndConquer do
  def div_con(x) do
    x
    |> Enum.map(&sum_value/1)
    |> Enum.sum()
  end

  def sum_value(num) when is_binary(num), do: -String.to_integer(num)
  def sum_value(num), do: num
end
