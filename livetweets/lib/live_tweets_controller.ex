defmodule LiveTweets.Controller do
  alias LiveTweets.View, as: Presenter

  def initialize do
    keyword = Presenter.keyword_query
    start_stream(keyword)
  end

  defp start_stream(keyword) do
    stream = ExTwitter.stream_filter(track: keyword) |>
      Stream.map(fn(x) -> x.text end) |>
      Stream.map(fn(x) -> IO.puts "#{x}\n---------------\n" end)
    Enum.to_list(stream)
  end
end