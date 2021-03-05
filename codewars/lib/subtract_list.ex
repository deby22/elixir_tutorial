defmodule ArrayDiff do
  def array_diff(a, b) do
    mapset = MapSet.new(b)
    Enum.filter(a, &(not MapSet.member?(mapset, &1)))
  end

  # reject will be better
end
