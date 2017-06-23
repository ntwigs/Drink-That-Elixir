defmodule Mean do
  @moduledoc """
    This module gets the mean value from a list of integers.
  """

  def get(numbers) do
    list_sum = sum(numbers)
    list_amount = length(numbers)
    calculate_mean(list_sum, list_amount)
  end

  defp sum([current|remainder], list_sum \\ 0) do
    sum(remainder, list_sum + current)
  end

  defp sum([], list_sum), do: list_sum

  defp calculate_mean(list_sum, list_amount) do
    rounded_value = Float.round(list_sum / list_amount, 1)
    rounded_value
  end
end