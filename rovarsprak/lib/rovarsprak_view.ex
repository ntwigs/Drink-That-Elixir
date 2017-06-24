defmodule Rovarsprak.View do
  @moduledoc """
    This module takes care of displaying texts, words, and questions in the terminal.
  """

  @line "@*-*-*-*-*-*---"

  def word_to_convert, do: IO.gets "Enter a word to convert: "
  def wrong_answer, do: IO.puts "Please enter (y/n)"
  def another_conversion, do: IO.gets "\nWould you like to convert another word? (y/n): "
  def clear, do: IO.write [IO.ANSI.home, IO.ANSI.clear]
  def display_converted_word(word) do
    IO.puts @line
    IO.write word
    IO.puts @line
  end
end