defmodule TestSuite do
  use ExUnit.Case

  test "Sample tests" do
    Enum.each(
      [
        {"B", "B"},
        {"GB", "R"},
        {"RRR", "R"},
        {"RGBG", "B"},
        {"RBRGBRB", "G"},
        {"RBRGBRBGGRRRBGBBBGG", "G"},
        {"BGRGRBGBRRBBGRBGBBRBRGBRG", "B"},
        {"GRBGRRRBGRBGRGBRGBRBRGBRRGRBGRGBB", "R"},
        {"RBGRBGBRGBRBRGGRBBGRBGBRBBGRBGGBRBGBBGRBGBRGRBGRBB", "G"},
        {"BGBGRBGRRBGRBGGGRBGRGBGRRGGRBGRGRBGBRGBGBGRGBGBGBGRRBRGRRGBGRGBRGRBGRBGRBBGBRGRGRBGRGBRGBBRGGBRBGGRB",
         "G"}
      ],
      fn {a, b} -> assert ColouredTriangle.triangle(a) == b end
    )
  end
end
