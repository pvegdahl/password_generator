# PasswordGenerator

A simple application to generate [XKCD style passphrases](https://xkcd.com/936/).

It depends on the default randomizer for [`Enum.shuffle/1`](https://hexdocs.pm/elixir/1.16.0/Enum.html#shuffle/1) /
[Erlang :rand](https://www.erlang.org/doc/man/rand.html).


## Usage

`mix password <number of words>`