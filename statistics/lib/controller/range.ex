defmodule Range do
  def get(numbers) do
    lowest_value = Min.get(numbers)
    positive_lowest_value = abs(lowest_value)
    higest_value = Max.get(numbers)
    higest_value + positive_lowest_value
  end
end