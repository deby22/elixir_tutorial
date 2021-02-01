defmodule TestArrayLeaders do
  use ExUnit.Case

  defp testing(arr, exp) do
    actual = ArrayLeaders.array_leaders(arr)

    msg = """
    Given list #{inspect(arr, charlists: :as_lists)}
    Expected #{inspect(exp, charlists: :as_lists)}
    Got #{inspect(actual, charlists: :as_lists)}
    """

    assert actual == exp, msg
  end

  test "basic tests" do
    testing([1, 2, 3, 4, 0], [4])
    testing([16, 17, 4, 3, 5, 2], [17, 5, 2])
    testing([-1, -29, -26, -2], [-1])
    testing([-36, -12, -27], [-36, -12])
    testing([5, -2, 2], [5, 2])
    testing([0, -1, -29, 3, 2], [0, -1, 3, 2])
  end
end
