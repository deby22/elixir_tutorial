defmodule RomanDecoder do
  def decode(roman) do
    roman
    |> String.replace("CM", "CCCCCCCCC")
    |> String.replace("M", "DD")
    |> String.replace("CD", "CCCC")
    |> String.replace("D", "CCCCC")
    |> String.replace("XD", "XXXXXXXXX")
    |> String.replace("C", "LL")
    |> String.replace("XL", "XXXX")
    |> String.replace("L", "XXXXX")
    |> String.replace("IX", "IIIIIIIII")
    |> String.replace("X", "VV")
    |> String.replace("IV", "IIII")
    |> String.replace("V", "IIIII")
    |> String.graphemes()
    |> Enum.count()
  end
end
