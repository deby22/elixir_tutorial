defmodule Stack.Stash do
  use GenServer

  # Client
  def start_link(init_state) do
    GenServer.start_link(__MODULE__, init_state, name: __MODULE__)
  end

  def get do
    GenServer.call(__MODULE__, :get)
  end

  def update(stack) do
    GenServer.cast(__MODULE__, {:update, stack})
  end

  def handle_call(:get, _from, stack) do
    {:reply, stack, stack}
  end

  def handle_cast({:update, stack}, _old_state) do
    {:noreply, stack}
  end
end
