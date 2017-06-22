defmodule Range do
  @moduledoc """
    This module gets the value range from a list of integers.
  """

  def get(numbers) do
    lowest_value = Min.get(numbers)
    positive_lowest_value = -lowest_value
    higest_value = Max.get(numbers)
    higest_value + positive_lowest_value
  end
end