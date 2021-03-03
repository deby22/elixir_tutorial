defmodule Aretheythesame do
  # overcomplicated. Better if i just compare two list after sorting
  def comp(a, b) when length(a) != length(b), do: false

  def comp(a, b) do
    [Enum.sort(a), Enum.sort(b)]
    |> Enum.zip()
    |> Enum.drop_while(fn {a, b} -> a * a == b end)
    |> Enum.empty?()
  end
end
