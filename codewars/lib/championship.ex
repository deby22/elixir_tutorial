defmodule Champions do
  def count_wins(winner_list, country) do
    winner_list
    |> Enum.filter(fn winner -> winner.country == country end)
    |> Enum.count()
  end
end
