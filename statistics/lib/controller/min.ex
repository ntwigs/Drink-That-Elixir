defmodule Min do
  @moduledoc """
    This module gets the lowest value from a list of integers.
  """
  
  def get(numbers) do
    compare(numbers)
  end

  defp compare([current|remainder]) do
    next = List.first(remainder)
    new_list = if current < next, do: List.replace_at(remainder, 0, current), else: remainder
    if (length(remainder) === 0), do: current, else: compare(new_list)
  end
end