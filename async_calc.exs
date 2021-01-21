# Calculator on start with zero, and send messag
# Based on https://youtu.be/EEJ2MY2Tc9A

defmodule Calc do
    def main do
        # simple usage by add 2 times
        calc_pid = Calc.start
        Calc.add(calc_pid, 20)
        Calc.add(calc_pid, 10)
        Calc.view(calc_pid)

        # make many process
        pool = Enum.map(1..100, fn _ -> Calc.start end)    end

    def start do
        spawn(fn -> loop(0) end)
    end

    def view(server_pid) do
        send(server_pid, {:view, self()})

        receive do
            {:response, value} -> value
        end

    end

    def add(server_pid, value), do: send(server_pid, {:add, value})
    def sub(server_pid, value), do: send(server_pid, {:sub, value})
    def mult(server_pid, value), do: send(server_pid, {:mult, value})
    def div(server_pid, value), do: send(server_pid, {:div, value})

    defp loop(current_value) do
        new_value = 
            receive do
                {:view, caller_pid} -> 
                    send(caller_pid, {:response, current_value})
                    current_value
                {:add, value} ->
                    current_value + value
                {:sub, value} ->
                    current_value - value
                {:mult, value} ->
                    current_value * value
                {:div, value} ->
                    current_value / value
                _ -> 
                    # catch everyting that isn't following defined method
                    IO.puts("Invalid message")
            end
        
        # almost forgot about it
        loop(new_value)
    end
end