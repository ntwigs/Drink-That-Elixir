defmodule Presentation do
  @moduledoc """
    This module is used in order to present the statistics result.
  """

  @line "#*********************#"

  def display(message, value) do
    IO.puts @line
    IO.puts "#{ message }: #{ value }"
  end

  def display_error(message) do
    IO.puts @line
    IO.puts "#{ message }"
  end

  def data_too_short do
    IO.puts @line
    IO.puts "The data to analyze was too short."
    IO.puts @line
    :error
  end

  def no_data do
    IO.puts @line
    IO.puts "There was no data to analyze."
    IO.puts @line
    :error
  end
end