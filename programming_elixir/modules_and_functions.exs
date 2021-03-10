defmodule ModulesAndFunctions do
  # Convert a float to a string with two decimal digits. (Erlang)
  def float_to_string(val), do: :io.format("~.2f~n", [val])

  # Get the value of an operating-system environment variable. (Elixir)
  def env(val), do: System.get_env(val)
  
  # Return the extension component of a file name (so return .exs if given
  def ext(val), do: Path.extname(val)
  
  # Return the process’s current working directory. (Elixir)
  def dir, do: File.cwd

  # Execute a command in your operating system’s shell.
  def cmd(val, args \\ []), do: System.cmd(val, args)
end
