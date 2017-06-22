defmodule Presentation do
  @line "#*********************#"

  def display(message, value) do
    IO.puts @line
    IO.puts "#{ message }: #{ value }"
  end
end