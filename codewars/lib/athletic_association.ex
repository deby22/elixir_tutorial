defmodule AthleticAssociation do
  def stat(string) when string == "", do: ""

  def stat(string) do
    races = String.split(string, ", ") |> Enum.map(&to_seconds(&1)) |> Enum.sort()
    range = Enum.max(races) - Enum.min(races)
    median = median(races)
    avg = div(Enum.sum(races), length(races))
    "Range: #{from_seconds(range)} Average: #{from_seconds(avg)} Median: #{from_seconds(median)}"
  end

  defp median(races) when rem(length(races), 2) == 1 do
    Enum.at(races, div(length(races), 2))
  end

  defp median(races) when rem(length(races), 2) == 0 do
    div(Enum.at(races, div(length(races), 2)) + Enum.at(races, div(length(races), 2) - 1), 2)
  end

  defp to_seconds(str) do
    [h, m, s] = String.split(str, "|") |> Enum.map(&String.to_integer(&1))
    s + m * 60 + h * 60 * 60
  end

  defp from_seconds(h, m, seconds) when seconds >= 3600 do
    from_seconds(h + 1, m, seconds - 3600)
  end

  defp from_seconds(h, m, seconds) when seconds >= 60 do
    from_seconds(h, m + 1, seconds - 60)
  end

  defp from_seconds(h, m, s) do
    h = h |> Integer.to_string() |> String.pad_leading(2, "0")
    m = m |> Integer.to_string() |> String.pad_leading(2, "0")
    s = s |> Integer.to_string() |> String.pad_leading(2, "0")
    "#{h}|#{m}|#{s}"
  end

  defp from_seconds(seconds), do: from_seconds(0, 0, seconds)
end
