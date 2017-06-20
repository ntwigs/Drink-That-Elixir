defmodule Max do
  def get_max(numbers) do
    compare(numbers)
  end

  def compare([current|remainder]) do
    next = List.first(remainder)
    new_list = if ( current > next ), do: List.replace_at(remainder, 0, current), else: remainder
    if (length(remainder) === 1), do: write(current), else: compare(new_list)
  end

  def compare([]), do: nil

  def write(value), do: IO.puts "Max Value: #{ value }"
end