defmodule PersistentBugger do
  def persistence(n), do: persistence(0, n)
  def persistence(x, n) when n < 10, do: x

  def persistence(x, n) do
    n =
      n
      |> IO.inspect()
      |> Integer.digits()
      |> Enum.reduce(fn x, acc -> x * acc end)

    persistence(x + 1, n)
  end
end
