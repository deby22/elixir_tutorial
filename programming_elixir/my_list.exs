defmodule MyList do
  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]

  def add_1([]), do: []
  def add_1([head | tail]), do: [head + 1  | square(tail)]

  def map([], _func), do: []
  def map([head|tail], func), do: [func.(head) | map(tail, func)]


  def reduce([], value, _), do: value
  def reduce([head|tail], value, func), do: reduce(tail, func.(head, value), func)

  def mapsum([], _func), do: 0
  def mapsum([head|tail], func), do: func.(head) + mapsum(tail, func)


  def max([x]), do: x
  def max([head|tail]), do: Kernel.max(head, max(tail))

  def caesar([], _n), do: []
  def caesar([head|tail], n) when head + n <= ?z, do: [head+n, caesar(tail, n)]
  def caesar([head|tail], n), do: [head+n-26, caesar(tail, n)]

    
end
