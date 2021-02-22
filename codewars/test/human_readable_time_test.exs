defmodule TestHumanReadable do
  use ExUnit.Case

  test "basic cases" do
    assert HumanReadable.format(0) == "00:00:00"
    assert HumanReadable.format(59) == "00:00:59"
    assert HumanReadable.format(60) == "00:01:00"
    assert HumanReadable.format(90) == "00:01:30"
    assert HumanReadable.format(3599) == "00:59:59"
    assert HumanReadable.format(3600) == "01:00:00"
    assert HumanReadable.format(45296) == "12:34:56"
    assert HumanReadable.format(86399) == "23:59:59"
    assert HumanReadable.format(86400) == "24:00:00"
    assert HumanReadable.format(359_999) == "99:59:59"
  end
end
