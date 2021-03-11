defmodule Fib do
  def stream(n) do
    Stream.unfold({0, 1}, fn {f1, f2} -> {f1, {f2, f1+f2}} end) |> Enum.take(n)
  end
end
