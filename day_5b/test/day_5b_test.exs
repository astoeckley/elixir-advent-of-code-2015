defmodule Day_5bTest do
  use ExUnit.Case
  doctest Day_5b

  test "qjhvhtzxzqqjkmpb is nice" do
    assert Day_5b.check_if_nice("qjhvhtzxzqqjkmpb") == true
  end

  test "xxyxx is nice" do
    assert Day_5b.check_if_nice("xxyxx") == true
  end

  test "uurcxstgmygtbstg is naughty" do
    assert Day_5b.check_if_nice("uurcxstgmygtbstg") == false
  end

  test "ieodomkazucvgmuy is naughty" do
    assert Day_5b.check_if_nice("ieodomkazucvgmuy") == false
  end
end
