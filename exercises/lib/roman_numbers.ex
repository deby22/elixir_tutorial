defmodule RomanNumbers do
  def run(n) do
    String.duplicate("I", n)
    # basic numbers
    |> String.replace("IIIII", "V")
    |> String.replace("VV", "X")
    |> String.replace("XXXXX", "L")
    |> String.replace("LL", "C")
    # ends
    |> String.replace("IIII", "IV")
    |> String.replace("VIV", "IX")
    |> String.replace("VIV", "XXXX")
    |> String.replace("LXXXX", "XC")
    |> String.replace("XXXX", "XL")
  end
end
