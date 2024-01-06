defmodule PasswordGenerator do
  def word_list() do
    File.stream!("data/word_list.txt")
    |> Enum.to_list()
  end
end
