defmodule LiveTweets do
  @moduledoc """
  Initializes the process.
  """

  def main(_args), do: LiveTweets.TwitterStream.initialize
end
