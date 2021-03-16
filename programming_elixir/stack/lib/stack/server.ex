defmodule Stack.Server do
  use GenServer

  # Client
  def start_link(_) do
    GenServer.start_link(__MODULE__, nil, name: __MODULE__)
  end

  def pop do
    GenServer.call(__MODULE__, :pop)
  end

  def push(value) do
    GenServer.cast(__MODULE__, {:push, value})
  end

  # Server
  def init(_) do
    {:ok, Stack.Stash.get()}
  end

  def terminate(reason, stack) do
    Stack.Stash.update(stack)
  end

  def handle_call(:pop, _from, [element | stack]) do
    {:reply, element, stack}
  end

  def handle_cast({:push, value}, stack) do
    if is_integer(value) and value < 10, do: exit(:kill)
    {:noreply, [value | stack]}
  end
end
