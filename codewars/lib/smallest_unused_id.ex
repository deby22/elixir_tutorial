defmodule Order do
  def next_id(list) do
    Enum.min(list) |> Stream.iterate(&(&1 + 1)) |> Enum.find(fn id -> not (id in list) end)
  end
end
