defmodule Statistics do
  import Max

  def initialize do
    numbers = [1, 2, 3, 4, 5, 6]
    Max.get_max(numbers)
  end
end
