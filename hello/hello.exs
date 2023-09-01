defmodule Hello do
  def maths([]), do: nil
  def maths([head | tail]) do
    IO.puts(head)
    maths(tail)
  end

  def maths_list() do
    ["Paper", "Pen", "Eraser"]
  end

end
