defmodule Min do
  def get_min(numbers) do
    compare(numbers)
  end

  def compare([current|remainder]) do
    next = List.first(remainder)
    new_list = if ( current < next ), do: List.replace_at(remainder, 0, current), else: remainder
    if (length(remainder) === 1), do: write(current), else: compare(new_list)
  end

  def write(value), do: IO.puts "Min Value: #{ value }"
end