defmodule DurationFormatter do
  def format_duration(0), do: "now"

  def format_duration(seconds) do
    ""
    |> time(seconds, "year")
    |> time(rem(seconds, quotient("year")), "day")
    |> time(rem(seconds, quotient("day")), "hour")
    |> time(rem(seconds, quotient("hour")), "minute")
    |> time(rem(seconds, quotient("minute")), "second")
  end

  defp quotient(unit) do
    case unit do
      "year" -> 31_536_000
      "day" -> 86400
      "hour" -> 3600
      "minute" -> 60
      _ -> 1
    end
  end

  defp time(str, seconds, unit) do
    time = time(seconds, unit)
    join_operator = if rem(seconds, quotient(unit)) != 0, do: ", ", else: " and "

    if time == "" do
      str
    else
      if str != "", do: str <> "#{join_operator}#{time}", else: time
    end
  end

  defp time(seconds, unit) do
    case div(seconds, quotient(unit)) do
      0 -> ""
      1 -> "1 #{unit}"
      n -> "#{n} #{unit}s"
    end
  end
end
