defmodule KataCapitalization do
  def capitalize(downcase) do
    upcase = String.upcase(downcase)

    [
      downcase |> String.codepoints() |> Enum.map_every(2, &String.upcase/1) |> Enum.join(),
      upcase |> String.codepoints() |> Enum.map_every(2, &String.downcase/1) |> Enum.join()
    ]
  end
end
