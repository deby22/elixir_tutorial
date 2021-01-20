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

defmodule PatternMatching do
    # module to learn how PatternMatching works
    def main do
        {name, age} = {"Dawid", 27}
        IO.puts "Name: #{name}\t Age: #{age}"

        {_, time} = :calendar.local_time()
        {hour, min, sec} = time
        IO.puts "Just time: #{hour} #{min} #{sec}"

        [1, x, y] = [1, 2, 3]
        IO.puts "X: #{x}\t Y: #{y}"

        # split list by first elem and other elements
        [head|tail] = [1, 2, 3, 4, 5]  # similar to pop first elem
        IO.puts "Head: #{head}"
        IO.inspect tail, char_lists: :as_lists

        # min value
        [min | _] = Enum.sort([4, 3, 5, 1, 2])
        IO.puts "Min: #{min}"

        # PatternMatching of function
        IO.puts "Rectangle #{area({:rectangle, 10, 20})}"
        IO.puts "Square #{area({:square, 10})}"
        IO.puts "Circle #{area({:circle, 20})}"
        IO.puts "Unknown #{area({:triangle, 10, 20})}"
    end

    def area({:rectangle, a, b}), do: a * b
    def area({:square, a}), do: a * a
    def area({:circle, r}), do: r * r * 3.14159
    def area(_), do: :unkown
end

defmodule Condition do
    def main do
        IO.puts "If usage #{max_with_if(10, 20)}"
        IO.puts "Unless usage #{max_with_unless(10, 20)}"
        IO.puts "Cond usage #{max_with_cond(10, 20)}"
        IO.puts "Case usage #{max_with_case(10, 20)}"

    end
    
    def max_with_if(a, b) do
        if a >= b, do: a, else: b
    end
    def max_with_unless(a, b) do
        unless a >= b, do: b, else: a
    end

    def max_with_cond(a, b) do
        cond do
            a >= b -> a
            true -> b
        end
    end

    def max_with_case(a, b) do
        case a >= b do
            true -> a
            false -> b
        end
    end
end


defmodule Guards do
    # Module to understand Guards
    def main do
        # normal usage
        IO.puts "10: #{test(10)} \t -10: #{test(-10)} \t 0: #{test(0)} \t Invalid: #{test(:invalid)}"
    
        # lambda usage
        test = fn
            x when is_number(x) and x < 0 -> :negative
            0 -> :zero
            x when is_number(x) and x > 0 -> :positive
            _ -> :invalid
        end
        IO.puts "10: #{test.(10)} \t -10: #{test.(-10)} \t 0: #{test.(0)} \t Invalid: #{test.(:invalid)}"

    end

    def test(x) when is_number(x) and x < 0, do: :negative
    def test(0), do: :zero
    def test(x) when is_number(x) and x > 0, do: :positive
    def test(_), do: :invalid
end


defmodule With do
    # module to practiseWith Clause
    # tricki way to valid date
    def main() do
        valid_data = %{
            "login" => "Some login",
            "email" => "Some email",
            "password" => "Some password"
            }
        IO.inspect extract_user(valid_data)
        invalid_data = %{
            "email" => "Some email",
            "password" => "Some password"
            }
        IO.inspect extract_user(invalid_data)
        :ok
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


defmodule Recursion do
    # Module to learn how looping and recusrion works
    def main do
        # Looping 10 times and print number
        print(10)

        # Recursion to sum elemenets on list
        IO.puts "Sum elem on list: #{sum([1, 2, 3, 4, 5])}"
    

    end

    def print(0), do: :ok
    def print(n) do
        print(n - 1)
        IO.puts(n)
    end

    def sum([]), do: 0
    def sum([head|tail]), do: head + sum(tail)
end


defmodule Fib do
    # Standard solution to find fibbonaci number
    def main, do: main(10)  # default value
    def main(n) do
        start = :os.system_time(:seconds)
        fib = getNumber(n)
        finish = :os.system_time(:seconds)
        diff = finish - start
        IO.puts "Result: #{fib}"
        IO.puts "Time: #{diff}"
    end

    def getNumber(0), do: 0
    def getNumber(1), do: 1
    def getNumber(n), do: getNumber(n-1) + getNumber(n-2)
end


defmodule OptimizedFib do
    # Elixir Way to optimize fibbonaci
    def main, do: main(10)  # default value
    def main(n) do
        start = :os.system_time(:seconds)
        fib = getNumber(n)
        finish = :os.system_time(:seconds)
        diff = finish - start
        IO.puts "Result: #{fib}"
        IO.puts "Time: #{diff}"
    end

    def getNumber(n) when n < 0, do: :error  # 0
    def getNumber(n), do: getNumber(n, 1, 0)  # 1
    def getNumber(0, _, result), do: result  # 2
    def getNumber(n, next, result), do: getNumber(n - 1, next + result, next)  # 3

## getNumber(10) -> getNumber(10, 1, 0)  # 1
## getNumber(9, 1, 1) -> getNumber(8, 2, 1)  # 3
## getNumber(8, 2, 1) -> getNumber(7, 3, 2)  # 3
## getNumber(7, 3, 2) -> getNumber(6, 5, 3)  # 3
## getNumber(6, 5, 3) -> getNumber(5, 8, 5)  # 3 
## getNumber(5, 8, 5) -> getNumber(4, 13, 8)  # 3
## getNumber(4, 13, 8) -> getNumber(3, 21, 13)  # 3
## getNumber(3, 21, 13) -> getNumber(2, 34, 21)  # 3
## getNumber(2, 34, 21) -> getNumber(1, 55, 34)  # 3
## getNumber(1, 55, 34) -> getNumber(0, 89, 55)  # 2 getNumber(0, _, result)
## getNumber(0, 89, 55) -> 55
end

defmodule Enumerate do
    #  each, map, filter and reduce and comprehension
    def main do
        list = [1, 2, 3, 4, 5, 6, 7, 8] 
        enum_each(list)

        # Enum
        IO.inspect enum_map(list)
        IO.inspect enum_filter(list)
        IO.inspect enum_reduce(list)
        IO.inspect enum_reduce(list, 0)
        IO.inspect enum_reduce(list, 10)
    
        # Comprehension
        IO.inspect comprehension_pow(list)
        IO.inspect comprehension(list)
        table = multiplication_table(5)
    end

    defp comprehension(list) do
        for x <- [1, 2, 3], y <- [4, 5, 6], do: {x, y, x*y}
    end

    defp multiplication_table(size) do
        for x <- 1..size, y <- 1..size, into: %{}, do: {{x, y}, x*y}
    end
    
    defp comprehension_pow(list) do
        for x <- list, do: x * x  # pow
    end

    defp enum_each(list) do
        Enum.each(list, fn x -> IO.puts(x) end)
    end

    defp enum_map(list) do
        Enum.map(list, fn x -> 2 * x end)
    end

    defp enum_filter(list) do
        Enum.filter(list, fn x -> rem(x, 2) == 1 end)
    end

    defp enum_reduce(list, start) do
        Enum.reduce(list, start, fn x, y -> x + y end)
    end

    defp enum_reduce(list) do
        Enum.reduce(list, 0, fn x, y -> x + y end)
    end
end