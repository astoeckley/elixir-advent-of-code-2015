data = "yzbqklnj"

defmodule Four do
  def generate_md5(str, int) do
    input = str <> Integer.to_string(int)
    :crypto.hash(:md5, input) |> Base.encode16
  end

  def check_md5(_seed, _int, _md5 \\ "")

  def check_md5(_seed, int, "000000" <> _rest) do
    int - 1
  end

  def check_md5(seed, int, _md5) do
    new_md5 = generate_md5(seed, int)
    check_md5(seed, int + 1, new_md5)
  end

  def calculate(data) do
    data
    |> check_md5(1)
  end
end

IO.puts Four.calculate(data)
