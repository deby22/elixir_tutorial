defmodule Server do
    def start do
        Process.register(GenericServer.start(Server), :server)
    end

    def init do
        []
    end
    
    def call_server(msg) do
        GenericServer.call(:server, {:request, "Message #{msg}"})
    end

    def handle_call({:request, msg}, _state) do
        Process.sleep(1000)
        {msg, []}
    end
end

defmodule Main do
    def main do
        Server.start
        # Send 10 message
        # all messages are sent almost instantly
        # response camme with one seconds delay
        Enum.each(1..10, fn x -> spawn(fn -> IO.puts("Sendinng msg #{x}")
            resp = Server.call_server(x)
            IO.puts("Response: #{resp}")
            end)
            end
            )
    end
end