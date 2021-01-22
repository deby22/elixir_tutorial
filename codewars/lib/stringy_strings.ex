defmodule OneZeroSequencer do
  def stringy(size) do
    # my solution
    Enum.map(1..size, &convert/1) |> Enum.join()

    # best solution in CodeWars
    Stream.cycle([1, 0]) |> Enum.take(size) |> Enum.join()
  end

  def convert(num), do: rem(num, 2) |> to_string
end
