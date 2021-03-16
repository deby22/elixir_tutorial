defmodule Stack.Server do
  use GenServer

  def init(init_state) do
    {:ok, init_state}
  end

  def handle_call(:pop, _from, [element | stack]) do
    {:reply, element, stack}
  end
end
