defmodule ListAndRecursion do
  def all?([], _func), do: true
  def all?([head|tail], func) do
    if func.(head) == true do
      all?(tail, func)
    else
      false
    end      
  end

  def each([], _func), do: []
  def each([head|tail], func), do: [func.(head) | each(tail, func)]

  def filter([], _func), do: []
  def filter([head|tail], func) do
    if func.(head) do
      [head|filter(tail, func)]
    else
      filter(tail, func)
    end
  end

  def split(list, count), do: do_split(list, [], count)
  defp do_split(old, new, 0), do: {Enum.reverse(new), old}
  defp do_split([], new, _count), do: {Enum.reverse(new), []}
  defp do_split([head|tail] = old, new, count) do
    do_split(tail, [head|new], count-1) 
  end

  def take(list, count) do
    {new, _} = split(list, count)
    new
  end

  def flatten([]), do: []
  def flatten([head|tail]), do: flatten(head) ++ flatten(tail)
  def flatten(head), do: [head]


  def span(from, to) when from > to, do: []
  def span(from, to), do: [from | span(from+1, to)]
  def primes(n) do
    range = span(2, n)
    range -- for a <- range, b <- range, a <= b, a*b <= n, do: a*b
  end
end
