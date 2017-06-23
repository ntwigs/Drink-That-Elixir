defmodule StatisticsTest do
  use ExUnit.Case
  doctest Statistics

  test "Testing Max" do
    assert Max.get([3, 5, 2, -5, 9, 2, -5, 5, 10, 4, 1, 0, -1, 9, 0]) === 10
    assert Max.get([5, 1, 1, 1, 3, -2, 2, 5, 7, 4, 5, 16]) === 16
  end

  test "Testing Min" do
    assert Min.get([3, 5, 2, -5, 9, 2, -5, 5, 10, 4, 1, 0, -1, 9, 0]) === -5
    assert Min.get([5, 1, 1, 1, 3, -2, 2, 5, 7, 4, 5, 16]) === -2
  end

  test "Testing Mean" do
    assert Mean.get([3, 5, 2, -5, 9, 2, -5, 5, 10, 4, 1, 0, -1, 9, 0]) === 2.6
    assert Mean.get([5, 1, 1, 1, 3, -2, 2, 5, 7, 4, 5, 16]) === 4.0
  end

  test "Testing Median" do
    assert Median.get([3, 5, 2, -5, 9, 2, -5, 5, 10, 4, 1, 0, -1, 9, 0]) === 2
    assert Median.get([5, 1, 1, 1, 3, -2, 2, 5, 7, 4, 5, 16]) === 3.5
  end

  test "Testing Mode" do
    assert Mode.get([3, 5, 2, -5, 9, 2, -5, 5, 10, 4, 1, 0, -1, 9, 0]) === "[ -5, 0, 2, 5, 9 ]"
    assert Mode.get([5, 1, 1, 1, 3, -2, 2, 5, 7, 4, 5, 16]) === "[ 1, 5 ]"
  end

  test "Testing Range" do
    assert Range.get([3, 5, 2, -5, 9, 2, -5, 5, 10, 4, 1, 0, -1, 9, 0]) === 15
    assert Range.get([5, 1, 1, 1, 3, -2, 2, 5, 7, 4, 5, 16]) === 18
  end

  test "Non-existant" do
    assert Statistics.analyze() === :error
  end

  test "Empty" do
    assert Statistics.analyze([]) === :error
  end
end
