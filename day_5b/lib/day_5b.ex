defmodule Day_5b do
  def calculate(str) do
    str
    |> String.split
    |> Enum.count(&check_if_nice/1)
  end

  def check_if_nice(str) do
    check_dup(str) && check_pair(str)
  end

  def check_dup(str) do
    upper_limit = String.length(str) - 2
    has_dup = for n <- 0..upper_limit, do: check_dup_for_position(str, n)
    Enum.any?(has_dup)
  end

  def check_pair(str) do
    upper_limit = String.length(str) - 3
    has_pair = for n <- 0..upper_limit, do: check_pair_for_position(str, n)
    Enum.any?(has_pair)
  end

  defp check_dup_for_position(str, position) do
    substr = str
             |> String.slice(position..(position + 1))
    {:ok, regex}  = Regex.compile(substr)
    dup_count     = Regex.scan(regex, str) |> Enum.count
    dup_count > 1
  end

  defp check_pair_for_position(str, position) do
    list = str
           |> String.slice(position..(position + 2))
           |> String.split("", trim: true)
    case list do
      [a, _, a] ->
        true
      _ ->
        false
    end
  end
end

IO.inspect Day_5b.calculate(SeedData.string)
