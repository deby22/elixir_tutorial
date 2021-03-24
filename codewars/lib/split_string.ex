defmodule SplitStrings do
  def solution(str) do
    str
    |> String.graphemes()
    |> Enum.chunk_every(2)
    |> Enum.map(&pair/1)
  end

  defp pair([a, b]), do: "#{a}#{b}"
  defp pair([a]), do: "#{a}_"
end
