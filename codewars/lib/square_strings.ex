defmodule SquareStrings do
  def vert_mirror(str) do
    lines = String.split(str)

    lines
    |> Enum.map(&String.reverse/1)
    |> Enum.join("\n")
  end

  def hor_mirror(str) do
    str
    |> String.split()
    |> Enum.reverse()
    |> Enum.join("\n")
  end

  def oper(func, s) do
    func.(s)
  end
end
