defmodule Encryptor do
  def rot13(string) do
    string
    |> String.to_charlist()
    |> Enum.map(&new_letter/1)
    |> to_string()
  end

  defp new_letter(letter) do
    cond do
      letter >= ?a and letter <= ?z -> cycle_rem(?a, letter)
      letter >= ?A and letter <= ?Z -> cycle_rem(?A, letter)
      true -> letter
    end
  end

  defp cycle_rem(start_point, letter), do: start_point + rem(letter - start_point + 13, 26)
end
