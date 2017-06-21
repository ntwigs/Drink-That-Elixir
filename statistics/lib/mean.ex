defmodule Mean do
  def get_mean(numbers) do
    list_sum = sum(numbers)
    list_amount = length(numbers)
    calculate_mean(list_sum, list_amount)
  end

  def sum([current|remainder], list_sum \\ 0) do
    sum(remainder, list_sum + current)
  end

  def sum([], list_sum), do: list_sum

  def calculate_mean(list_sum, list_amount), do: write(list_sum / list_amount)

  def write(value), do: IO.puts "Mean Value: #{ Float.round(value, 1) }"
end