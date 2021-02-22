defmodule HumanReadable do
  def format(seconds), do: format(0, 0, seconds)

  def format(hours, minutes, seconds) when seconds < 60 do
    hours = hours |> Integer.to_string() |> String.pad_leading(2, "0")
    minutes = minutes |> Integer.to_string() |> String.pad_leading(2, "0")
    seconds = seconds |> Integer.to_string() |> String.pad_leading(2, "0")
    "#{hours}:#{minutes}:#{seconds}"
  end

  def format(hours, minutes, seconds) do
    if minutes == 59 do
      format(hours + 1, 0, seconds - 60)
    else
      format(hours, minutes + 1, seconds - 60)
    end
  end
end
