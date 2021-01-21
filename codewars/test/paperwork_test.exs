defmodule TestPaperwork do
  use ExUnit.Case
  import Paperwork, only: [paperwork: 2]

  test "simple tests" do
    assert paperwork(5, 5) == 25
    assert paperwork(5, 5) == 25
    assert paperwork(5, -5) == 0
    assert paperwork(-5, -5) == 0
    assert paperwork(-5, 5) == 0
    assert paperwork(5, 0) == 0
  end
end
