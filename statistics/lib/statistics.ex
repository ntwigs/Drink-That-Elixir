defmodule Statistics do
  @moduledoc """
    This is the index module which is used in order to initialize
    all the calls to the different sets of modules. The modules 
    that are called are located in the controller, and view folder.
  """

  @number_list [ 1, 2, 6, 3, 4, 5, 3, 6, 6, 2, 2 ]

  def initialize do
    get_max()
    get_min()
    get_mean()
    get_range()
    get_median()
    get_mode()
  end

  def get_max do
    max_value = Max.get(@number_list)     
    Presentation.display("Max", max_value)
  end

  def get_min do
    min_value = Min.get(@number_list)
    Presentation.display("Min", min_value)
  end

  def get_mean do
    mean_value = Mean.get(@number_list)
    Presentation.display("Mean", mean_value)
  end

  def get_range do
    range_value = Range.get(@number_list)
    Presentation.display("Range", range_value)
  end

  def get_median do
    median_value = Median.get(@number_list)
    Presentation.display("Median", median_value)
  end

  def get_mode do
    mode_value = Mode.get(@number_list)
    Presentation.display("Mode", mode_value)
  end
end
