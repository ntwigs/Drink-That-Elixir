defmodule LiveTweets do
  def start_stream, do: LiveTweets.TwitterStream.initialize
end
