defmodule TestSplitStrings do
  use ExUnit.Case
  import SplitStrings, only: [solution: 1]

  test "basic tests" do
    assert solution("abcdef") == ["ab", "cd", "ef"]
    assert solution("abcdefg") == ["ab", "cd", "ef", "g_"]
    assert solution("") == []
  end
end
