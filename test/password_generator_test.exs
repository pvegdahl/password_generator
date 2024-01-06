defmodule PasswordGeneratorTest do
  use ExUnit.Case
  doctest PasswordGenerator

  test "The word list has the expected number of words" do
    assert PasswordGenerator.word_list() |> Enum.count() == 4951
  end
end
