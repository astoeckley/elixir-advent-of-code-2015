defmodule Day_5a do
  def check_if_nice(str) do
    list = String.split(str, "", trim: true)
    check_vowels(list) && check_doubles(list) && !check_baddies(str)
  end

  def calculate(str) do
    str
    |> prepare_data
    |> Enum.count(&check_if_nice/1)
  end

  defp prepare_data(str) do
    str
    |> String.split("\n", trim: true)
    |> Enum.map(&String.strip/1)
  end

  defp check_vowels(list) do
    vowel_count = list
    |> Enum.filter(fn(str) -> str in ["a", "e", "i", "o", "u"] end)
    |> Enum.count
    vowel_count >= 3
  end

  defp check_doubles(list) do
    original_count  = Enum.count(list)
    uniq_count      = Enum.dedup(list) |> Enum.count
    original_count > uniq_count
  end

  defp check_baddies(str) do
    str =~ "ab" || str =~ "cd" || str =~ "pq" || str =~ "xy"
  end
end

IO.inspect Day_5a.calculate(SeedData.string)
