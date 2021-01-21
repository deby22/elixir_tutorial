# Message
# https://youtu.be/EEJ2MY2Tc9A

defmodule Message do
    
    def main do
        send_and_receive
        multiplication_in_process

    end

    def multiplication_in_process do
        send(self(), {:msg, 10})
        result = receive do
            {:msg, x} -> x * x
        end
    end

    def send_and_receive do    
        # send message - now there is one message in box
        send(self(), "message")

        # receive message    
        # if there won't be message this piece of code will block terminal
        receive do
            msg -> IO.puts(msg)
        end

        # example if there is no message in box
        # after 3 seconds puts information
        receive do
            msg -> IO.puts(msg)
        after
            3000 -> IO.puts("There is no message in box")
        end

        # send message and process again
        send(self(), "message")
        receive do
            msg -> IO.puts(msg)
        after
            3000 -> IO.puts("There is no message in box")
        end

        
    end    
 
end