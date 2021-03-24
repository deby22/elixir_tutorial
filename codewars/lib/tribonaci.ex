defmodule TribonacciSequence do
  @spec tribonacci({number, number, number}, non_neg_integer) :: [number]
  # MySolution
  # def tribonacci(signature, n) do
  #   trib = do_tribonacci(signature, n - 3, [])

  #   if trib == [] do
  #     Tuple.to_list(signature) |> Enum.take(n)
  #   else
  #     Tuple.to_list(signature) ++ Enum.reverse(trib)
  #   end
  # end

  # def do_tribonacci(_signature, n, acc) when n <= 0, do: acc

  # def do_tribonacci({a, b, c}, n, acc) do
  #   sum = a + b + c
  #   do_tribonacci({b, c, sum}, n - 1, [sum | acc])
  # end

  # Best solution from CW
  def tribonacci(signature, n) do
    Stream.unfold(signature, fn {a, b, c} ->
      {a, {b, c, a + b + c}}
    end)
    |> Enum.take(n)
  end
end
