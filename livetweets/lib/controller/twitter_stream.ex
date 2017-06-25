defmodule LiveTweets.TwitterStream do
  alias LiveTweets.View, as: Presenter
  alias LiveTweets.DataHandler, as: Handler

  def initialize do
    keyword = Presenter.keyword_query
    start_stream(keyword)
  end

  defp start_stream(keyword) do
    { :ok, agent } = Agent.start_link fn -> [] end

    stream = ExTwitter.stream_filter(track: keyword) |>
      Stream.map(&(&1.text)) |>
      Stream.map(&(add_to_agent(agent, &1)))
    Enum.to_list(stream)
  end

  def add_to_agent(agent, result) do
    Agent.update(agent, &([result | &1]))
    current = Agent.get(agent, &(&1))
    Handler.handle_data(current)
  end
end