defmodule Max do
  def get_max(numbers) do
    compare(numbers)
  end

  def compare([first|remainder]) do
    IO.puts first
    compare(remainder)
  end

  def compare([]), do: nil
end