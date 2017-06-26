defmodule LiveTweets.DataHandler do
  def handle_data(result) do
    seperate_words = split_phrases(result)
    counted_words = count_words(seperate_words)
    words = get_highest(counted_words)
    IO.write [IO.ANSI.home, IO.ANSI.clear]
    IO.puts words
  end

  def split_phrases([current|remainder], accumulator \\ []) do
    current_tweet = String.split(current, " ")
    updated_accumulator = accumulator ++ current_tweet
    split_phrases(remainder, updated_accumulator)
  end
  def split_phrases(_, accumulator), do: accumulator

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