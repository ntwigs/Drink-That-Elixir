defmodule Presentation do
  @moduledoc """
    This module is used in order to present the statistics result.
  """

  @line "#*********************#"

  def display(message, value) do
    IO.puts @line
    IO.puts "#{ message }: #{ value }"
  end
end