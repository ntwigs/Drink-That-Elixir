defmodule LiveTweets.DataHandler do
  @moduledoc """
  This module takes a list which contains more lists which contains Tweets.
  The Tweets are split in order to correctly count all the occurances of
  words in them. (Use flat instead?). 
  """

  def handle_data(result) do
    seperate_words = Enum.map(result, &(String.split(&1, " "))) |> List.flatten()
    counted_words = count_words(seperate_words)
    words = get_highest(counted_words)
    IO.write [IO.ANSI.home, IO.ANSI.clear]
    IO.puts words
  end

  def count_words([word|remainder], accumulator \\ %{ }) do
    lowercase_word = String.downcase(word)
    updated_accumulator = Map.update(accumulator, lowercase_word, 1, &(&1 + 1))
    count_words(remainder, updated_accumulator)
  end
  def count_words(_, accumulator), do: accumulator

  defp get_highest(accumulator) do
    all_highest_keys = accumulator
      |> Enum.sort(fn ({k1, v1}, {k2, v2}) -> v1 >= v2 end)
      |> Enum.slice(0, 30)
      |> Enum.map(fn { key, value } -> "#{ key } -- #{ value }\n" end)
  end
end