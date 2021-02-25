defmodule TestDurationFormatter do
  use ExUnit.Case
  import DurationFormatter, only: [format_duration: 1]

  test "format_duration" do
    assert format_duration(1) == "1 second"
    assert format_duration(62) == "1 minute and 2 seconds"
    assert format_duration(120) == "2 minutes"
    assert format_duration(3600) == "1 hour"
    assert format_duration(3662) == "1 hour, 1 minute and 2 seconds"
    assert format_duration(15_731_080) == "182 days, 1 hour, 44 minutes and 40 seconds"
    assert format_duration(132_030_240) == "4 years, 68 days, 3 hours and 4 minutes"
  end
end
