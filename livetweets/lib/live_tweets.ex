defmodule LiveTweets do
  @moduledoc """
  Initializes the process.
  """

  def start_stream, do: LiveTweets.TwitterStream.initialize
end
