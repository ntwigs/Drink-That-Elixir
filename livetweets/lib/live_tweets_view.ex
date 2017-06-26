defmodule LiveTweets.View do
  @moduledoc """
  This module handles what is presented in the terminal window.
  """

  def display(type, view, result \\ "") do
    clear
    message = get_message type
    IO.puts "--- Live Twitter\n\n"
    get_view(view, result)
    IO.puts message
  end

  def get_message type do
    case type do
      :searching -> "Searching for Tweets.."
      :stream -> "Streaming Tweets.."
      :none -> ""
    end
  end

  def get_view(view, result) do
    case view do
      :query -> keyword_query
      :result -> present_result result
      :none -> ""
    end
  end

  def keyword_query do
    IO.gets "What would you like to search for?: "
  end

  def present_result(result) do
    IO.puts "#{ result }\n"
  end
  
  def clear, do: IO.write [IO.ANSI.home, IO.ANSI.clear]
  def string_format(word, occurance), do: "#{ word } - #{ occurance }\n"
end