defmodule InfoSys.Counter do
  use GenServer

  def start_link(val), do: GenServer.start_link(__MODULE__, val)

  def inc(pid), do: GenServer.cast(pid, :inc)
  def dec(pid), do: GenServer.cast(pid, :dec)
  def val(pid), do: GenServer.call(pid, :val)

  def init(val), do: {:ok, val}

  def handle_cast(:inc, val), do: {:noreply, val + 1}
  def handle_cast(:dec, val), do: {:noreply, val - 1}
  def handle_call(:val, _from, val), do: {:reply, val, val}
end
