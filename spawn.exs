# Spawn new process
# https://youtu.be/EEJ2MY2Tc9A

defmodule Spawn do
    def main do
        # wait 1 sec
        sync_fn("test 1")   

        IO.puts "---"

        # wait 3 sec
        Enum.map(1..3, &sync_fn("test #{&1}"))
    
        IO.puts "---"

        # spam a process
        spawn(fn -> sync_fn("test 1") end)

        IO.puts "---"

        # async_fn
        # function is no longer block execute other function
        # result will appear on screen after 1 second (sleep inside fun)
        # order of execution is no longer guaranted
        async_fn = fn x -> spawn(fn -> sync_fn(x) end) end
        Enum.each(1..5, &async_fn.("test #{&1}"))
    end

    defp sync_fn(x) do
        Process.sleep(1000)
        IO.puts "#{x} return"
    end
     
end