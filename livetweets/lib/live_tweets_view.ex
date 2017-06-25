defmodule LiveTweets.View do
    def keyword_query, do: IO.gets "What would you like to search for?: " |> String.strip()
end