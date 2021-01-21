defmodule Kata do
  def pairs(ls) do
    ls
    |> Enum.chunk_every(2, 2, :discard)
    |> Enum.count(fn [x, y] -> abs(x - y) == 1 end)
  end
end
