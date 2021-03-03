defmodule CountBits do
  def bits(n) do
    n |> Integer.digits(2) |> Enum.sum()
  end
end
