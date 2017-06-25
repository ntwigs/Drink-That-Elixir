defmodule LiveTweets do
  def start_stream, do: LiveTweets.Controller.initialize
end
