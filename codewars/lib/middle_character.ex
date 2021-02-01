defmodule Challenge do
  def get_middle(str) when byte_size(str) <= 2, do: str
  def get_middle(str), do: get_middle(String.slice(str, 1..-2))
end
