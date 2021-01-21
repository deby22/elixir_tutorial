# TaskList
# Exercise to learn about Data Abstraction, Function Pipeing and Structs
# Based on: https://youtu.be/39UA4jiaq0Q

defmodule Main do
    def main do
        pid = TaskServer.start
        entry = %{date: ~D[2020-01-20], title: "Learn Elixir"}
        pid |> TaskServer.add_task(entry)
        pid |> TaskServer.get_tasks(entry.date)

        # set name to process
        Process.register(pid, :task_server)
        :task_server |> TaskServer.get_tasks(entry.date)
    end
end

defmodule TaskList do
    defstruct id: 0, entries: %{}

    def new(entries \\ []) do
        Enum.reduce(
            entries,
            %TaskList{},
            fn entry, acc -> add_task(acc, entry) end
        )
    end

    def add_task(task_list, entry) do
        entry = Map.put(entry,  :id, task_list.id)
        
        new_entries = 
        Map.put(
            task_list.entries,
            task_list.id,
            entry
        )

        %TaskList{
            task_list | entries: new_entries, id: task_list.id + 1
        }
    end

    def get_tasks(task_list, date) do
        task_list.entries
        |> Stream.filter(fn {_, entry} -> entry.date == date end)
        |> Enum.map(fn {_, entry} -> entry end)
    end

    def update_task(task_list, %{} = new_entry) do
        update_task(task_list, new_entry.id, fn _ -> new_entry end)
    end

    def update_task(task_list, entry_id, update_fn) do
        case Map.fetch(task_list.entries, entry_id) do
            :error -> task_list
            {:ok, old_entry} ->
                new_entry = update_fn.(old_entry)
                new_entries = 
                    Map.put(
                        task_list.entries,
                        new_entry.id,
                        new_entry
                    )
            %TaskList{task_list | entries: new_entries}
        end
    end
end


defmodule TaskServer do
    ## client side

    def start do
        GenericServer.start(TaskServer)
    end

    def add_task(server_pid, new_entry) do
        GenericServer.cast(server_pid, {:add_task, new_entry})
    end

    def get_tasks(server_pid, date) do
        GenericServer.call(server_pid, {:get_tasks, date})
    end

    ## server
    def init do
        TaskList.new()
    end

    def handle_call({:get_tasks, date}, task_list) do
        {TaskList.get_tasks(task_list, date), task_list}
    end

    def handle_cast({:add_task, new_entry}, task_list) do
        TaskList.add_task(task_list, new_entry)
    end

end
