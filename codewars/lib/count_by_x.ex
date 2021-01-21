defmodule Count do
  def count_by(x, n) do
    # my solution
    Enum.take_every(x..(x * n), x)

    # Best CodeWars solution
    for r <- 1..n, do: r * x
  end
end
