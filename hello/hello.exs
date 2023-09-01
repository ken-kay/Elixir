defmodule Hello do
  def ups(0), do: 0
  def ups(num) do
    ups(num-1)
    IO.puts(num)
  end
end
