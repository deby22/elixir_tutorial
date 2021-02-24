defmodule SumsParts do
  def parts_sums(ls) do
    do_parts_sums([Enum.sum(ls)], ls)
  end

  def do_parts_sums(sum, []), do: Enum.reverse(sum)

  def do_parts_sums([first | _] = sum, [head | tail]) do
    do_parts_sums([first - head | sum], tail)
  end
end
