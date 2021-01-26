defmodule MyLanguages do
  def my_languages(results) do
    results
    |> Enum.filter(fn {_, v} -> v >= 60 end)
    |> Enum.sort_by(&elem(&1, 1))
    # Codewars doesn't suppoer :desc
    |> Enum.reverse()
    |> Enum.map(fn {k, _} -> k end)
  end
end
