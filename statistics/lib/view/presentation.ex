defmodule Presentation do
  @line "***********************"

  def display(message, value) do
    IO.puts "#{ message }: #{ value }"
    IO.puts @line
  end
end