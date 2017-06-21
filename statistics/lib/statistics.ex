defmodule Statistics do
  @numberList [5, 3, -42, 2, 4, 1337, 1442, 6, 2, 1, 3, 7, 100, 122] 

  def initialize do
    get_max()
    get_min()
    get_mean()
    get_range()
  end

  def get_max do
    max_value = Max.get(@numberList)     
    Presentation.display("Max", max_value)
  end

  def get_min do
    min_value = Min.get(@numberList)
    Presentation.display("Min", min_value)
  end

  def get_mean do
    mean_value = Mean.get(@numberList)
    Presentation.display("Mean", mean_value)
  end

  def get_range do
    range_value = Range.get(@numberList)
    Presentation.display("Range", range_value)
  end
end
