defmodule WeightSort do
  def weight(str) do
    str
    |> String.split()
    |> Enum.map(fn x -> {key(x), x} end)
    |> Enum.sort_by(&elem(&1, 1))
    |> Enum.sort_by(&elem(&1, 0))
    |> Enum.map(fn {_key, value} -> value end)
    |> Enum.join(" ")
  end

  defp key(str) do
    str |> String.to_integer() |> Integer.digits() |> Enum.sum()
  end
end
