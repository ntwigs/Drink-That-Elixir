defmodule Rovarsprak do
  @consonants ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'x', 'z', 'w']

  def convert do
    word_to_convert = IO.gets "Enter a word to convert: " |> String.trim()
    compare_word_consonants(word_to_convert)
  end

  def compare_word_consonants(word_to_convert) do
    
  end
end
