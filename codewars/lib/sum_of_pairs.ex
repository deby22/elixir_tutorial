defmodule SumOfPairs do
  @doc """

  Finds the first pair of ints as judged by the index of the second value.

  iex> sum_pairs( [ 10, 5, 2, 3, 7, 5 ], 10 )

  { 3, 7 }

  """

  @spec sum_pairs([integer], integer) :: {integer, integer} | nil

  # def sum_pairs(ints, sum), do: do_sum_pairs(ints, sum, [])
  # My solution is based on list, so its slow
  # def do_sum_pairs([], _sums, _acc), do: nil
  # def do_sum_pairs([head | tail], sums, acc) do
  #   case Enum.find(acc, fn elem -> head + elem == sums end) do
  #     nil -> do_sum_pairs(tail, sums, [head | acc])
  #     elem -> {elem, head}
  #   end
  # end
  # CW solution is based on MapSet, so is fast (probably Find is O(n))
  def sum_pairs(ints, sum), do: do_sum_pairs(ints, sum, MapSet.new())
  defp do_sum_pairs([], _sum, _acc), do: nil

  defp do_sum_pairs([head | tail], sum, acc) do
    case MapSet.member?(acc, sum - head) do
      true -> {sum - head, head}
      false -> do_sum_pairs(tail, sum, MapSet.put(acc, head))
    end
  end
end
