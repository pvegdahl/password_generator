defmodule PasswordGenerator do
  def word_list() do
    File.stream!("data/word_list.txt")
    |> Enum.map(&String.trim/1)
  end

  def new_password(length) do
    word_list()
    |> Enum.shuffle()
    |> Enum.take(length)
    |> Enum.map(&String.capitalize/1)
    |> Enum.join()
  end
end
