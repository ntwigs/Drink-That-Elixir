defmodule Mode do
  @moduledoc """
    This module gets the most occurring values from a list of integers.
  """

  def get(number_list) do
    compare(number_list)
  end

  def compare([current|remainder], accumulator \\ %{ }) do
    current_as_atom = current |> Integer.to_string() |> String.to_atom()
    updated_accumulator = Map.update(accumulator, current_as_atom, 1, &(&1 + 1))
    compare(remainder, updated_accumulator)
  end

  def compare([], accumulator), do: get_highest(accumulator)

  def get_highest(accumulator) do
    values = accumulator |> Map.values() |> Enum.sort()
    highest_value = Max.get(values)
    highest_list = []
    accumulator
      |> Enum.filter(fn { key, value } -> value === highest_value end)
      |> Enum.map(fn { key, value } -> "#{ Atom.to_string(key) }, " end) 
  end
end