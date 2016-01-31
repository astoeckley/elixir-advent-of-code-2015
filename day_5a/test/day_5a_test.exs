defmodule Day_5aTest do
  use ExUnit.Case
  doctest Day_5a

  test "ugknbfddgicrmopn is nice" do
    assert Day_5a.check_if_nice("ugknbfddgicrmopn") == true
  end

  test "aaa is nice" do
    assert Day_5a.check_if_nice("aaa") == true
  end

  test "jchzalrnumimnmhp is naughty" do
    assert Day_5a.check_if_nice("jchzalrnumimnmhp") == false
  end

  test "haegwjzuvuyypxyu is naughty" do
    assert Day_5a.check_if_nice("haegwjzuvuyypxyu") == false
  end

  test "dvszwmarrgswjxmb is naughty" do
    assert Day_5a.check_if_nice("dvszwmarrgswjxmb") == false
  end
end
