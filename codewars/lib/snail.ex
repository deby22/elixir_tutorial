# defmodule Snail do
#   @doc """

#   Converts a matrix to a list by walking around its edges from the top-left going clockwise.

#   ![snail walk](http://www.haan.lu/files/2513/8347/2456/snail.png)

#   iex> Snail.snail( [ [ 1, 2, 3 ], [ 4, 5, 6 ], [ 7, 8, 9 ] ] )
#   [ 1, 2, 3, 6, 9, 8, 7, 4, 5 ]

#   """

#   def snail(matrix), do: move({[], matrix}, "right")

#   def move({result, []}, _), do: result

#   def move({result, matrix}, direction) do
#     case direction do
#       "right" -> to_right(result, matrix) |> move("down")
#       "down" -> to_down(result, matrix) |> move("left")
#       "left" -> to_left(result, matrix) |> move("up")
#       "up" -> to_up(result, matrix) |> move("right")
#     end
#   end

#   def to_right(result, [row | others]) do
#     {result ++ row, others}
#   end

#   def to_left(result, matrix) do
#     [row | others] = Enum.reverse(matrix)
#     {result ++ Enum.reverse(row), Enum.reverse(others)}
#   end

#   def to_down(result, matrix) do
#     column = Enum.map(matrix, &List.last/1)
#     matrix = Enum.map(matrix, fn row -> row |> Enum.reverse() |> tl() |> Enum.reverse() end)
#     {result ++ column, matrix}
#   end

#   def to_up(result, matrix) do
#     column = matrix |> Enum.reverse() |> Enum.map(&List.first/1)
#     matrix = Enum.map(matrix, &tl/1)
#     {result ++ column, matrix}
#   end
# end

# Best solution on CodeWars is based on matrix operation
# Genious. Simple and effective
defmodule Matrix do
  def horiz_reflect(m), do: m |> Enum.reverse()
  def transpose(m), do: m |> List.zip() |> Enum.map(&Tuple.to_list(&1))
  def rotate(m), do: m |> Matrix.transpose() |> Matrix.horiz_reflect()
end

defmodule Snail do
  def snail([]), do: []
  def snail([h | t]), do: h ++ (t |> Matrix.rotate() |> snail)
end
