# binary search
defmodule Chop do
  def guess(actual, range=min..max) do
    middle = div(min + max, 2)
    IO.puts "Is it #{middle}"
    do_guess(actual, middle, range)
  end

  defp do_guess(actual, actual, _), do: IO.puts "Yes, it's #{actual}"
  defp do_guess(actual, middle, _min..max) when middle < actual, do: guess(actual, middle+1..max)
  defp do_guess(actual, middle, min.._max) when middle > actual, do: guess(actual, min..middle-1)
  
end
