defmodule Codewars.Heronizer do
  def no_boring_zeros(n) when n == 0, do: 0

  def no_boring_zeros(n) do
    n |> to_string |> String.trim("0") |> String.to_integer()
  end
end
