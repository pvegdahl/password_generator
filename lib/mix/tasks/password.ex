defmodule Mix.Tasks.Password do
  @moduledoc "Generate a password phrase of N words"
  use Mix.Task

  @shortdoc "Generate a password phrase of N words"
  def run([length]), do: String.to_integer(length) |> PasswordGenerator.new_password() |> IO.puts()
end
