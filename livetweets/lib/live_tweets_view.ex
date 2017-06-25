defmodule LiveTweets.View do
  def keyword_query, do: IO.gets "What would you like to search for?: " |> String.strip()
  def present_result(result), do: IO.puts "#{ result }\n---------------\n"
end