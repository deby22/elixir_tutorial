defmodule Codewars.Maximizator do
  def super_size(n) do
    # my solution
    n
    |> to_string
    |> String.to_charlist()
    |> Enum.sort()
    |> Enum.reverse()
    |> to_string
    |> String.to_integer()

    # best solution from CodeWars
    n
    |> Integer.digits()
    |> Enum.sort()
    |> Enum.reverse()
    |> Integer.undigits()

    # CodeWars doesnt suppoer sort(:desc)
    # Tricki solution
    # Enum.sort(&(&1 >= &2))
  end
end
