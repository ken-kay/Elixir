defmodule Hello do
  def ups(0), do: 0
  def ups(num) do
    IO.puts(num)
    ups(num-1)
  end 
end
