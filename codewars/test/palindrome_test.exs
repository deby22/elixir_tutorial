defmodule TestPalindrome do
  use ExUnit.Case

  defp testing(str, exp) do
    a = IsPalindrome.is_palindrome(str)
    assert a == exp, "Given string #{str}, expected #{exp}, got #{a}"
  end

  test "fixed tests" do
    testing("a", true)
    testing("aba", true)
    testing("Abba", true)
    testing("malam", true)
    testing("walter", false)
    testing("kodok", true)
    testing("Kasue", false)
    testing("hello", false)
    testing("Bob", true)
    testing("Madam", true)
    testing("AbBa", true)
    testing("", true)
    testing("LAGrALLyiclOaEowNvmU", false)
    testing("cWalaIYFGucHEhbnEH", false)
    testing("smlWLKQYCrRUcqOLYuGGuYLOqcURrCYQKLWlms", true)
    testing("dRjLeHcvvcHeLjRd", true)
    testing("wvvqHAfrFWkIYygRQHTR", false)
    testing("zuKWoAyeQNvhurRlYlUUlYlRruhvNQeyAoWKuz", true)
    testing("QtFpQMSYPMnnMPYSMQpFtQ", true)
    testing("muNcdggdcNum", true)
    testing("TUkKinLuE", false)
    testing("MaKeRSDisini", false)
  end
end
