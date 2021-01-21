defmodule NumGenerator do
  def generate_range(min, max, step) do
    # Erlang solution
    :lists.seq(min, max, step)

    # Elixir solution
    Enum.take_every(min..max, step)
  end
end
