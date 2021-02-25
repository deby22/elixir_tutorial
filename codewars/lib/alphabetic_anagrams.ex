defmodule AlphabethicAnagrams do
  def list_position(word) do
    letters = String.graphemes(word)
    do_list_position(0, letters)
  end

  def do_list_position(counter, []), do: counter + 1

  def do_list_position(counter, [head | tail] = letters) do
    counter = counter + next_varianty_count(letters, head)
    do_list_position(counter, tail)
  end

  def next_varianty_count(letters, letter) do
    letters = Enum.sort(letters)

    letters
    |> Enum.uniq()
    |> Enum.sort()
    |> Enum.take_while(&(&1 != letter))
    |> Enum.map(fn x -> varianty_count(List.delete(letters, x)) end)
    |> Enum.sum()
  end

  def factorial(n) when n <= 1, do: 1
  def factorial(n) when n > 1, do: n * factorial(n - 1)

  @spec varianty_count(any, any) :: integer
  def varianty_count(n, k) when is_integer(n), do: div(factorial(n), k)

  def varianty_count(letters) do
    letters_quotient =
      letters
      |> Enum.reduce(%{}, fn x, acc -> Map.update(acc, x, 1, &(&1 + 1)) end)
      |> Enum.map(fn {_, x} -> factorial(x) end)
      |> Enum.reduce(fn x, acc -> acc * x end)

    varianty_count(Enum.count(letters), letters_quotient)
  end
end
