defmodule Partlist do
  # My Solution. Over complicated
  # def part_list(a), do: do_part_list([], [], a)
  # def do_part_list(result, _left, [_]), do: Enum.reverse(result)
  # def do_part_list(result, left, [current | right]) do
  #   left = [current | left]
  #   result = [
  #     [
  #       left |> Enum.reverse() |> Enum.join(" "),
  #       right |> Enum.join(" ")
  #     ]
  #     | result
  #   ]

  #   do_part_list(
  #     result,
  #     left,
  #     right
  #   )
  # end
  # Best CodeWars solution
  def part_list(a) do
    Enum.map(
      1..(length(a) - 1),
      fn n ->
        Enum.split(a, n)
        |> Tuple.to_list()
        |> Enum.map(&Enum.join(&1, " "))
      end
    )
  end
end
