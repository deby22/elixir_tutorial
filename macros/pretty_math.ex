defmodule MyMacro do
  defmacro pretty_math({:+, _meta, [left, right]} = ast) do
    quote do
      IO.puts """
        #{unquote(left)}
        #{unquote(right)}
        ---
        #{unquote(ast)}
      """
    end
  end
end

# require MyMacro
# MyMacro.pretty_math 1 + 2  # see the result
