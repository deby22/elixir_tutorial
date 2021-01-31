defmodule Speedcontrol do
  def gps(_, x) when length(x) <= 1, do: 0

  def gps(s, x) do
    x
    # Create list of list with range
    |> Enum.chunk_every(2, 1, :discard)
    # Difference between distance
    |> Enum.map(fn [a, b] -> b - a end)
    # Calculate speed
    |> Enum.map(fn a -> 3600 * a / s end)
    # Choose max
    |> Enum.max()
  end
end
