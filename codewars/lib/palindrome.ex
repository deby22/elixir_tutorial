defmodule IsPalindrome do
  def is_palindrome(s) do
    String.downcase(s)
    |> String.graphemes()
    |> _is_palindrome()
  end

  defp _is_palindrome([]), do: true
  defp _is_palindrome([_]), do: true

  defp _is_palindrome([left | tail]) do
    [right | tail] = Enum.reverse(tail)
    if left == right, do: _is_palindrome(Enum.reverse(tail)), else: false
  end
end
