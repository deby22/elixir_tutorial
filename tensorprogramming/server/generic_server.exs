#  Generic Server, OTP, Register Processes - Part Nine
# Based on: https://youtu.be/aL09utHk2bM

defmodule GenericServer do

    def start(module) do
        spawn(fn ->
            init_state = module.init()
            loop(module, init_state)
        end)
    end
    
    defp loop(module, current_state) do
        receive do
            {:call, request, caller} ->
                {response, new_state} =
                    module.handle_call(
                        request,
                        current_state
                    )

                send(caller, {:response, response})
                loop(module, new_state)

            {:cast, request} ->
            new_state = module.handle_cast(
                request,
                current_state
            )

            loop(module, new_state)
        end
    end

    def call(server_pid, request) do
        send(server_pid, {:call, request, self()})

        receive do
            {:response, response} ->
                response
        end
    end

    def cast(server_pid, request) do
        send(server_pid, {:cast, request})
    end
end