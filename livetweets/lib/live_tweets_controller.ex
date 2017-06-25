defmodule LiveTweets.Controller do
  def initialize do
    keyword = IO.gets "What would you like to search for?: " |> String.strip()
    start_stream(keyword)
  end

  defp start_stream(keyword) do
    stream = ExTwitter.stream_filter(track: keyword) |>
      Stream.map(fn(x) -> x.text end) |>
      Stream.map(fn(x) -> IO.puts "#{x}\n---------------\n" end)
    Enum.to_list(stream)
  end
end