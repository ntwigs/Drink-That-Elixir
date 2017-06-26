defmodule LiveTweets.DataHandler do
  @moduledoc """
  This module takes a list which contains more lists which contains Tweets.
  The Tweets are split in order to correctly count all the occurances of
  words in them. (Use flat instead?). 
  """

  alias LiveTweets.View, as: Presenter

  def handle_data result do
    seperate_words = collect_words(result)
    counted_words = count_words(seperate_words)
    words = get_highest(counted_words)
    Presenter.display(:stream, :result, words)
    words
  end

  def collect_words result do
    Enum.map(result, &(String.split(&1, " ")))
      |> List.flatten()
  end

  def count_words([word|remainder], accumulator \\ %{ }) do
    lowercase_word = String.downcase(word)
    updated_accumulator = Map.update(accumulator, lowercase_word, 1, &(&1 + 1))
    count_words(remainder, updated_accumulator)
  end
  def count_words(_, accumulator), do: accumulator

  defp get_highest accumulator do
    accumulator
      |> Enum.sort(&(elem(&1, 1) >= elem(&2, 1)))
      |> Enum.slice(0, 30)
      |> Enum.map(&Presenter.string_format(elem(&1, 0), elem(&1, 1)))
  end
end