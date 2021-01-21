# TaskList
# Exercise to learn about Data Abstraction, Function Pipeing and Structs
# Based on: https://youtu.be/CyUWWYKFe60

defmodule Main do
    def main do
        # create task_list with 4 element
        task_list = TaskList.new()
        |> TaskList.add_task(%{date: ~D[2020-01-02], title: "Get Milk"})
        |> TaskList.add_task(%{date: ~D[2020-01-03], title: "Go to the store"})
        |> TaskList.add_task(%{date: ~D[2020-01-04], title: "Learn Elixir"})
        |> TaskList.add_task(%{date: ~D[2020-01-02], title: "Test "})

        IO.inspect task_list
        IO.puts "---------------"

        # override task on id=1
        task_list |> TaskList.update_task(%{date: ~D[2019-02-04], id: 0, title: "Buy new Laptop"})
    
        # create task_list based on entries list
        entries = [
            %{date: ~D[2020-01-18], title: "Prepare work station"},
            %{date: ~D[2020-01-29], title: "Learn basic of Elixir"},
            %{date: ~D[2020-01-20], title: "Learn about data structur"},
            %{date: ~D[2020-01-20], title: "Meeting ad 1 PM"},
            %{date: ~D[2020-01-21], title: "Some Magic with Struct, Stream and TaskList"},
        ]
        new_task_list = entries |> TaskList.new()
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