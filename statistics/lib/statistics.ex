defmodule Statistics do
  @moduledoc """
    This is the index module which is used in order to initialize
    all the calls to the different sets of modules. The modules 
    that are called are located in the controller, and view folder.
  """

  def analyze(data) do
    data_exists = !data or length(data) === 0
    check_data(data, data_exists)
  end

  def analyze, do: Presentation.no_data

  defp check_data(data, data_exists) do
    if !data_exists, do: initialize_analyze(data), else: Presentation.data_too_short
  end

  defp initialize_analyze(data) do
    get_max(data)
    get_min(data)
    get_mean(data)
    get_range(data)
    get_median(data)
    get_mode(data)
  end

  defp get_max(data) do
    max_value = Max.get(data)     
    Presentation.display("Max", max_value)
  end

  defp get_min(data) do
    min_value = Min.get(data)
    Presentation.display("Min", min_value)
  end

  defp get_mean(data) do
    mean_value = Mean.get(data)
    Presentation.display("Mean", mean_value)
  end

  defp get_range(data) do
    range_value = Range.get(data)
    Presentation.display("Range", range_value)
  end

  defp get_median(data) do
    median_value = Median.get(data)
    Presentation.display("Median", median_value)
  end

  defp get_mode(data) do
    mode_value = Mode.get(data)
    Presentation.display("Mode", mode_value)
  end
end
