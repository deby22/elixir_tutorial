defmodule Series do
  def sum(0), do: "0.00"

  def sum(n) do
    0..(n - 1)
    |> Enum.map(&(1 / (&1 * 3 + 1)))
    |> Enum.sum()
    |> Float.to_string(decimals: 2)
  end
end
