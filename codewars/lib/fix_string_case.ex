defmodule FixStringCase do
  def solve(s) do
    lower =
      s
      |> String.graphemes()
      |> Enum.filter(&(&1 == String.downcase(&1)))
      |> Enum.count()

    upper =
      s
      |> String.graphemes()
      |> Enum.filter(&(&1 == String.upcase(&1)))
      |> Enum.count()

    if upper > lower do
      String.upcase(s)
    else
      String.downcase(s)
    end
  end
end
