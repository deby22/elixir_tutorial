defmodule People do
  def list([]), do: ""
  def list([%{name: real_name}]), do: real_name
  def list([%{name: first_name}, %{name: second_name}]), do: "#{first_name} & #{second_name}"
  def list([head | tail]), do: "#{head.name}, #{list(tail)}"
end
