defmodule Messy do
  def name_shuffler(str) do
    # if there is more than 2 elem
    [head | tail] = String.split(str, " ")
    (tail ++ [head]) |> Enum.join(" ")

    # if we can reversae whole string
    str |> String.split() |> Enum.reverse() |> Enum.join(" ")
  end
end
