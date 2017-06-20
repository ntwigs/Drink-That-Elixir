defmodule Statistics do
  import Max

  def initialize do
    numbers = [5,3,2,4,1337,6,2,1,3,7,100,122]
    Max.get_max(numbers)
  end
end
