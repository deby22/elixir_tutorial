defmodule Codewars.TestMaximizator do
  use ExUnit.Case
  import Codewars.Maximizator, only: [super_size: 1]

  test "basic cases" do
    assert super_size(69) == 96
    assert super_size(513) == 531
    assert super_size(2017) == 7210
    assert super_size(414) == 441
    assert super_size(608_719) == 987_610
    assert super_size(123_456_789) == 987_654_321
    assert super_size(700_000_000_001) == 710_000_000_000
    assert super_size(666_666) == 666_666
    assert super_size(2) == 2
  end
end
