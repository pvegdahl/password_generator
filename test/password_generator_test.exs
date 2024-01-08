defmodule PasswordGeneratorTest do
  use ExUnit.Case
  doctest PasswordGenerator

  test "The word list has the expected number of words" do
    assert PasswordGenerator.word_list() |> Enum.count() == 4951
  end

  test "The word list has no duplicates" do
    assert PasswordGenerator.word_list() |> Enum.uniq() |> Enum.count() == 4951
  end

  test "The word list does not contain new lines" do
    assert Enum.all?(PasswordGenerator.word_list(), &!String.contains?(&1, "\n"))
  end

  test "A password is a single string (binary)" do
    assert PasswordGenerator.new_password(5) |> is_binary()
  end
end
