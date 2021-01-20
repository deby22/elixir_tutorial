# Course based on YT: https://youtu.be/GQVXyjYX1zA


defmodule Reversed do
    # module to practise how to recursive works
    def main do
        list = [1, 2, 3, 4, 5]
        reverse(list)
    end
    def reverse(list), do: reverse(list, [])
    def reverse([], reversed), do: reversed
    def reverse([head|tail], reversed), do: reverse(tail, [head|reversed])    
end


defmodule Functions do
    # module to learn functions
    def main do
        anonymous_sum = fn(a, b) -> a + b end
        short_anonymous_sum = &(&1 + &2) 

        IO.puts "Basic usage: #{basic_sum(1, 2)}"
        IO.puts "Short version of basic usage: #{short_basic_sum(1, 2)}"
        IO.puts "Annonymous version:  #{anonymous_sum.(1, 2)}"
        IO.puts "Short version of annonymous:  #{short_anonymous_sum.(1, 2)}"

    end

    def basic_sum(a, b) do
        a + b
    end
    def short_basic_sum(a, b), do: a + b
end


defmodule Guards do

    def main() do
        valid_data = %{
            "login" => "Some login",
            "email" => "Some email",
            }
        extract_user(valid_data)
    end

    def extract_user(user) do
        with {:ok, login} <- extract_login(user),
             {:ok, email} <- extract_email(user),
             {:ok, password} <- extract_password(user) do
                 {:ok, %{login: login, email: email, password: password}}
             end
    end

    defp extract_login(%{"login" => login}), do: {:ok, login}
    defp extract_login(_), do: {:error, "Missing Login"}
    defp extract_email(%{"email" => email}), do: {:ok, email}
    defp extract_email(_), do: {:error, "Missing email"}
    defp extract_password(%{"password" => password}), do: {:ok, password}
    defp extract_password(_), do: {:error, "Missing password"}
end