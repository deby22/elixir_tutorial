# TaskList
# Exercise to learn about Data Abstraction, Function Pipeing and Structs
# Based on: https://youtu.be/CyUWWYKFe60

defmodule Main do
    def main do
        # create a new task_list with one element
        task_list = TaskList.new() |> TaskList.add_task(~D[2020-01-18], "Prepare to work")
        
        # add three new elements
        task_list = task_list 
            |> TaskList.add_task(~D[2020-01-19], "Learn basic of Elixir")
            |> TaskList.add_task(~D[2020-01-20], "Learn recursiv and data structure")
            |> TaskList.add_task(~D[2020-01-20], "Meeting at 1 PM")

        # get tasks by key
        IO.inspect task_list |> TaskList.get_tasks(~D[2020-01-20])
    end
end

defmodule TaskList do
    def new(), do: MultiStorage.new()

    def add_task(task_list, date, body) do
        MultiStorage.add(task_list, date, body)
    end

    def get_tasks(task_list, date) do
        MultiStorage.get(task_list, date)
    end
end

defmodule MultiStorage do

    def new(), do: %{}

    def add(storage, key, value) do
        Map.update(
            storage,
            key,
            [value],
            fn values -> [value | values] end
        )
    end

    def get(storage, key) do
        Map.get(storage, key, [])
    end


end