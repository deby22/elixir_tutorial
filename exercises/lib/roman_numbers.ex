defmodule ArabicToRoman do
  def solution(number) do
    String.duplicate("I", number)
    # basic numbers
    |> String.replace("IIIII", "V")
    |> String.replace("VV", "X")
    |> String.replace("XXXXX", "L")
    |> String.replace("LL", "C")
    |> String.replace("CCCCC", "D")
    |> String.replace("DD", "M")
    # ends
    |> String.replace("IIII", "IV")
    |> String.replace("VIV", "IX")
    |> String.replace("LXXXX", "XC")
    |> String.replace("XXXX", "XL")
    |> String.replace("CCCC", "CD")
    |> String.replace("DCCCC", "CM")
    |> String.replace("DCD", "CM")
  end

  #
  # MCMXC
end
