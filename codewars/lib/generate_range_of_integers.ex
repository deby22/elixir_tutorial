defmodule NumGenerator do
  def generate_range(min, max, step) do
    :lists.seq(min, max, step)
  end
end
