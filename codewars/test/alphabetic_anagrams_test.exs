defmodule TestSuite do
  use ExUnit.Case

  describe "Anagram" do
    test "A" do
      assert AlphabethicAnagrams.list_position("A") == 1
    end

    test "ABAB" do
      assert AlphabethicAnagrams.list_position("ABAB") == 2
    end

    test "AAAB" do
      assert AlphabethicAnagrams.list_position("AAAB") == 1
    end

    test "BAAA" do
      assert AlphabethicAnagrams.list_position("BAAA") == 4
    end

    test "QUESTION" do
      assert AlphabethicAnagrams.list_position("QUESTION") == 24572
    end

    test "BOOKKEEPER" do
      assert AlphabethicAnagrams.list_position("BOOKKEEPER") == 10743
    end
  end
end
