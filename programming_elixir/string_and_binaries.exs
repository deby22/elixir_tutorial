defmodule StringAndBinaries do
  def ascii?(str), do: Enum.all?(str, fn ch -> ch in ? ..?~ end)

  def anagram?(s1, s2), do: Enum.sort(s1) == Enum.sort(s2)

  def center(list) do
    longest = longest(list)
    
    list
      |> Enum.map(fn x -> map(x, longest) end)
      |> Enum.each(&IO.puts/1)
  end

  defp map(str, longest) do
    str
    |> String.pad_leading(
      trunc(longest/2 + String.length(str) / 2)
    )
  end
  
  defp longest(list) do
    Enum.reduce(list, 0,
      fn x, acc ->
        if acc < String.length(x), do: String.length(x), else: acc end)
  end
end
