defmodule Hello do

  def world do
    IO.puts("Hello World!")
  end

  def countdown(0), do: 0
    def countdown(start) do
      IO.puts(start)
      countdown(start-1)
  end

  def spin(n) do
    n
    |> Integer.to_string()
    |> String.reverse()
    |> String.to_integer()
  end

  def limbs(num, stay \\ 0)
  def limbs(0, stay), do: stay
  def limbs(num, stay) do
    new_num = div(num,10)
    new_stay = stay * 10 + rem(num,10)
    limbs(new_num, new_stay)
  end

  def maths([]), do: nil
  def maths([head | tail]) do
    IO.puts(head)
    maths(tail)
  end

  @spec reverse(list[any()], [any()]) :: [any()]
  def reverse(num, pool \\ [])
  def reverse([], pool), do: pool
  def reverse([h | t], pool), do: reverse(t, [h | pool])

  # anon function double = fn x -> x*2 end
  def concat(from, dest), do: concat_fn(from |> reverse(), dest)
  def concat_fn([], dest), do: dest
  def concat_fn([h | t], dest), do: concat_fn(t, [h | dest])

end
