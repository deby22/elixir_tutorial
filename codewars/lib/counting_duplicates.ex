defmodule DuplicateCount do
  def count(str) do
    str = str |> String.downcase() |> String.graphemes()
    do_count(MapSet.new(), str)
  end

  defp do_count(duplicate, [head | tail]) do
    if head in tail do
      do_count(MapSet.put(duplicate, head), tail)
    else
      do_count(duplicate, tail)
    end
  end

  defp do_count(duplicate, []), do: Enum.count(duplicate)
end
