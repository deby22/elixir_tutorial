defmodule FindOdd do
  def find(list) do
    list
    |> Enum.reduce(%{}, fn x, acc -> Map.update(acc, x, 1, &(&1 + 1)) end)
    |> Enum.filter(fn {_, y} -> rem(y, 2) == 1 end)
    |> List.first()
    |> elem(0)
  end
end
