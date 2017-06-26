defmodule LiveTweets.View do
  @moduledoc """
  This module handles what is presented in the terminal window.
  """

  def keyword_query, do: IO.gets "What would you like to search for?: "
  def present_result(result), do: IO.puts "#{ result }\n---------------\n"
  def clear, do: IO.write [IO.ANSI.home, IO.ANSI.clear]
  def string_format(word, occurance), do: "#{ word } - #{ occurance }\n"
end