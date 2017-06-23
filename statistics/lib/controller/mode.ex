defmodule Mode do
  @moduledoc """
    This module gets the most occurring values from a list of integers.
  """

  def get(number_list), do: compare(number_list)

  def compare([current|remainder], accumulator \\ %{ }) do
    current_as_atom = current |> Integer.to_string() |> String.to_atom()
    updated_accumulator = Map.update(accumulator, current_as_atom, 1, &(&1 + 1))
    compare(remainder, updated_accumulator)
  end

  def compare([], accumulator), do: get_highest(accumulator)

  defp get_highest(accumulator) do
    values = accumulator |> Map.values() |> Enum.sort()
    highest_value = Max.get(values)
    all_highest_keys = accumulator
      |> Enum.filter(fn { _, value } -> value === highest_value end)
      |> Enum.map(fn { key, _ } -> Atom.to_string(key) end)
      |> Enum.join(", ")
    
    "[ #{ all_highest_keys } ]"
  end
end