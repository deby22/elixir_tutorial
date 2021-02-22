defmodule ArrayElementParity do
  # My solution
  # def solve(l), do: solve([], l)
  # def solve(data, []) do
  #   List.first(data)
  # end
  # def solve(data, [head | tail]) do
  #   IO.inspect({-head in data, data, head, tail})
  #   if -head in data do
  #     solve(List.delete(data, -head), tail)
  #   else
  #     solve([head | data], tail)
  #   end
  # end

  # Best CW solution (tricky - based on sum)
  def solve(l) do
    l
    |> Enum.uniq()
    |> Enum.sum()
  end
end
