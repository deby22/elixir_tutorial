defmodule Factorial do
  def factorial(0), do: 1
  def factorial(n), do: n * factorial(n - 1)
end

defmodule TailRecursiveFactorial do
  def factorial(n), do: do_factorial(n, 1)
  defp do_factorial(0, acc), do: acc
  defp do_factorial(n, acc), do: do_factorial(n-1, acc*n)
end
