defmodule Median do
  @moduledoc """
    This module gets the median value from a list of integers.
  """

  def get(numbers) do
    sorted_list = Enum.sort(numbers)
    is_even = rem(length(numbers), 2) === 0
    if is_even, do: get_center_even(sorted_list), else: get_center_odd(sorted_list) 
  end

  def get_center_even(sorted_list) do
    list_center = length(sorted_list) / 2 |> round
    upper_item = Enum.at(sorted_list, list_center)
    lower_item = Enum.at(sorted_list, list_center - 1)
    (lower_item + upper_item) / 2
  end

  def get_center_odd(sorted_list) do
    list_center = length(sorted_list) / 2 |> round
    Enum.at(sorted_list, list_center - 1)
  end
end