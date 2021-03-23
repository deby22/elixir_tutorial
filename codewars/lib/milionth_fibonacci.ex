defmodule Fib do
  def fib(num) do
    [a, _] = do_fib(num)
    a
  end

  def do_fib(0), do: [0, 1]
  def do_fib(1), do: [1, 1]

  def do_fib(num) do
    [a, b] = do_fib(div(num, 2))
    p = a * (2 * b - a)
    q = b * b + a * a
    if rem(num, 2) == 0, do: [p, q], else: [q, p + q]
  end
end
