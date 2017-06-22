defmodule Statistics do
  @number_list [ -1, -2, -3, -4, -5, -6 ]

  def initialize do
    get_max()
    get_min()
    get_mean()
    get_range()
    get_median()
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
end
