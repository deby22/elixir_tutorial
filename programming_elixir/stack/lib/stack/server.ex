defmodule Stack.Server do
  use GenServer

  # Client
  def start_link(init_state) do
    GenServer.start_link(__MODULE__, init_state, name: __MODULE__)
  end

  def pop do
    GenServer.call(__MODULE__, :pop)
  end

  def push(value) do
    GenServer.cast(__MODULE__, {:push, value})
  end

  # Server
  def terminate(reason, stack) do
    IO.puts("Reason: #{reason} \t\tStack#{stack}")
    :normal
  end

  def handle_call(:pop, _from, [element | stack]) do
    {:reply, element, stack}
  end

  def handle_cast({:push, value}, stack) do
    {:noreply, [value | stack]}
  end
end
