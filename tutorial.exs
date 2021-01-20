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
    def main do
        
    end
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