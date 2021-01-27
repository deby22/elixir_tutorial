defmodule ExclamationMarksSolution do
  def remove(s) do
    # My Solution.
    # s
    # |> String.replace_trailing("!", ".")
    # |> String.replace("!", "")
    # |> String.replace_trailing(".", "!")
    # Best Solution on CodeWars - based on regex
    String.replace(s, ~r/!(?!!*$)/, "")
  end
end
