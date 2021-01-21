defmodule Marker do
  def add_length(str) do
    str |> String.split(" ") |> Enum.map(&"#{&1} #{String.length(&1)}")
  end
end
