defmodule Tests.ArrayElementParityTest do
  use ExUnit.Case

  describe "- Should properly implement solve/1:" do
    test "solve([1, -1, 2, -2, 3])" do
      assert ArrayElementParity.solve([1, -1, 2, -2, 3]) === 3
    end

    test "solve([-3, 1, 2, 3, -1, -4, -2])" do
      assert ArrayElementParity.solve([-3, 1, 2, 3, -1, -4, -2]) === -4
    end

    test "solve([1, -1, 2, -2, 3, 3])" do
      assert ArrayElementParity.solve([1, -1, 2, -2, 3, 3]) === 3
    end

    test "solve([-110, 110, -38, -38, -62, 62, -38, -38, -38])" do
      assert ArrayElementParity.solve([-110, 110, -38, -38, -62, 62, -38, -38, -38]) === -38
    end

    test "solve([-9, -105, -9, -9, -9, -9, 105])" do
      assert ArrayElementParity.solve([-9, -105, -9, -9, -9, -9, 105]) === -9
    end
  end
end
