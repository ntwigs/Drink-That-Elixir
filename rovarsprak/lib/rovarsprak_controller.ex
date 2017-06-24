defmodule Rovarsprak.Controller do
  @moduledoc """
    This is the index module which handles the logic of the word conversion.
  """

  alias Rovarsprak.View, as: Present

  @consonants ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'x', 'z', 'w']

  def convert do
    Present.clear
    word_to_convert = Present.word_to_convert
    Present.clear
    compare_word_consonants(word_to_convert)
    another_conversion
  end

  def compare_word_consonants(word_to_convert) do
    letters_in_word = String.split(word_to_convert, "")
    converted_word = compare(letters_in_word)
    Present.display_converted_word(converted_word)
    converted_word
  end

  defp compare([letter|remaining], accumulator \\ "") do
    letter_as_char = String.to_charlist(letter) 
    exists = Enum.find(@consonants, &(&1 === letter_as_char))
    new_letter = if exists, do: combine_letters(letter), else: letter
    combined_string = "#{ accumulator }#{ new_letter }" # Adds the letter(s) to accumulator
    compare(remaining, combined_string)
  end

  defp compare([], accumulator), do: accumulator

  defp combine_letters(letter), do: "#{ letter }o#{ letter }"

  defp another_conversion do
    want_another_conversion = String.downcase(Present.another_conversion) |> String.slice(0, 1)

    case want_another_conversion do
      "y" -> convert
      "n" -> :ok
      _ -> 
        Present.clear
        Present.wrong_answer
        another_conversion
    end
  end
end
