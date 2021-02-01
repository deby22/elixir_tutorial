defmodule FlattenAndSort do
  # My solution, based on recursive
  # def solution([head | tail]) do
  #   (solution(head) ++ solution(tail)) |> Enum.sort()
  # end
  # def solution([]), do: []
  # def solution(variable), do: [variable]

  # tricky solution, based on List.flatten
  def solution(data) do
    data |> List.flatten() |> Enum.sort()
  end
end
