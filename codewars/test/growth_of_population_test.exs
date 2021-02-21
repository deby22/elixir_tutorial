defmodule TestGrowth do
  use ExUnit.Case

  import Growth, only: [nb_year: 4]

  test "nb_year" do
    # assert nb_year(1500, 5, 100, 5000) == 15
    # assert nb_year(1_500_000, 2.5, 10000, 2_000_000) == 10
    # assert nb_year(1_500_000, 0.25, 1000, 2_000_000) == 94
    assert nb_year(1000, 2.0, 50, 1214) == 4
  end
end
