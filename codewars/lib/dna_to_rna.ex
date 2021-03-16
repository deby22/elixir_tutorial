defmodule Convertor do
  def dna_to_rna(dna) do
    dna
    |> String.graphemes()
    |> Enum.map(&map/1)
    |> Enum.join()
  end

  defp map("T"), do: "U"
  defp map(letter), do: letter
end
