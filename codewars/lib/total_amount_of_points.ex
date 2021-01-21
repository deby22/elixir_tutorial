defmodule TotalPoints do
  def points(games) do
    add = fn
      x, y when x > y -> 3
      x, y when x == y -> 1
      x, y when x < y -> 0
    end

    games
    |> Enum.map(&String.split(&1, ":"))
    |> Enum.map(fn [x, y] -> add.(x, y) end)
    |> Enum.sum()
  end
end
