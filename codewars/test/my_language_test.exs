defmodule TestMyLanguages do
  use ExUnit.Case
  import MyLanguages

  test "Fixed tets" do
    assert my_languages(%{"Java" => 10, "Ruby" => 80, "Python" => 76}) == ["Ruby", "Python"]

    assert my_languages(%{"Hindi" => 60, "Greek" => 71, "Dutch" => 93}) == [
             "Dutch",
             "Greek",
             "Hindi"
           ]

    assert my_languages(%{"C++" => 50, "ASM" => 10, "Haskell" => 20}) == []
  end
end
