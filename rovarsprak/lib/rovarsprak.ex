defmodule Rovarsprak do
  @consonants ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'x', 'z', 'w']

  def convert do
    word_to_convert = IO.gets "Enter a word to convert: " |> String.trim()
    IO.puts word_to_convert
    compare_word_consonants(word_to_convert)
    want_another_conversion = String.downcase(another_conversion)

    if want_another_conversion === "y\n" do
      convert
    end

    # case want_another_conversion do
    #   "y" -> convert
    #   "n" -> :ok
    #   _ -> IO.puts "Please enter y / n"
    # end
  end

  def compare_word_consonants(word_to_convert) do
    letters_in_word = String.split(word_to_convert, "")
    compare(letters_in_word)
  end

  defp compare([letter|remaining], accumulator \\ "") do
    letter_as_char = String.to_charlist(letter)
    exists = Enum.find(@consonants, false, fn (consonant) -> consonant === letter_as_char end)
    new_letter = if exists, do: "#{ letter }o#{ letter }", else: letter
    combined_string = "#{ accumulator }#{ new_letter }"
    compare(remaining, combined_string)
  end

  defp compare([], accumulator), do: IO.puts accumulator

  defp another_conversion, do: IO.gets "Would you like to convert another word? (y/n)"
end
