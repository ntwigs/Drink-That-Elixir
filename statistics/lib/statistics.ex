defmodule Statistics do
  import Max
  import Min

  def initialize do
    numbers = [5,3,-42,2,4,1337,1442,6,2,1,3,7,100,122]
    Max.get_max(numbers)
    Min.get_min(numbers)
  end
end
