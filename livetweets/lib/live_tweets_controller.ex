defmodule LiveTweets.Controller do
  alias LiveTweets.View, as: Presenter

  def initialize do
    keyword = Presenter.keyword_query
    start_stream(keyword)
  end

  defp start_stream(keyword) do
    stream = ExTwitter.stream_filter(track: keyword) |>
      Stream.map(&(&1.text)) |>
      Stream.map(&(Presenter.present_result(&1)))
    Enum.to_list(stream)
  end
end