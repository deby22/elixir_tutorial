defmodule Paperwork do
  def paperwork(n, m) when n < 0 or m < 0, do: 0
  def paperwork(n, m), do: m * n
end
