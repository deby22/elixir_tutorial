defmodule MyMacro do
  defmacro my_if(condition, do: do_clause, else: else_clause) do
    quote do
      case unquote(condition) do
        true -> unquote(do_clause)
        _     -> unquote(else_clause)
      end
    end
  end

  def my_if_function(condition, do: do_clause, else: else_clause) do
    case condition do
      true -> do_clause
      _     -> else_clause
    end
  end

  # Simple usage
  # using macro
  # require MyMacro
  # MyMacro.my_if 1 + 2 == 3, do: "this", else: "that"
  # MyMacro.my_if 1 + 2 == 10, do: "this", else: "that"
  # using function
  # require MyMacro
  # MyMacro.my_if_function 1 + 2 == 3, do: "this", else: "that"
  # MyMacro.my_if_function 1 + 2 == 10, do: "this", else: "that"

  # Usage IO.puts inside clause
  # using macro
  # MyMacro.my_if 1 + 2 == 3, do: IO.puts("this"), else: IO.puts("that")
  # MyMacro.my_if 1 + 2 == 10, do: IO.puts("this"), else: IO.puts("that")
  # using function
  # MyMacro.my_if_function 1 + 2 == 3, do: IO.puts("this"), else: IO.puts("that")
  # MyMacro.my_if_function 1 + 2 == 10, do: IO.puts("this"), else: IO.puts("that")
end
