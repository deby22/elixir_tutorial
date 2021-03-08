defmodule ColouredTriangle do
  def triangle(row) do
    row
    |> String.graphemes()
    |> do_triangle()
  end

  def do_triangle([color]), do: color

  def do_triangle([_ | tail] = row) do
    Stream.zip(row, tail)
    |> Enum.map(&rgb/1)
    |> do_triangle()
  end

  def rgb(colors) do
    case colors do
      {"R", "R"} -> "R"
      {"G", "G"} -> "G"
      {"B", "B"} -> "B"
      _ -> List.first(["R", "G", "B"] -- Tuple.to_list(colors))
    end
  end
end
