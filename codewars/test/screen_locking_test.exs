defmodule TestScreenLocking do
  use ExUnit.Case

  def test_run(s, n, sol), do: assert(ScreenLocking.count_patterns_from(s, n) == sol)

  describe "Sample tests" do
    # test "\"A\", 10",do: test_run("A", 10, 0)
    # test "\"A\", 0",do: test_run("A", 0, 0)
    # test "\"E\", 14",do: test_run("E", 14, 0)
    # test "\"B\", 1",do: test_run("B", 1, 1)
    # test "\"C\", 2",do: test_run("C", 2, 5)
    # test "\"E\", 2",do: test_run("E", 2, 8)
    test "\"E\", 4", do: test_run("E", 4, 256)
  end
end
