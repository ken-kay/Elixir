defmodule Hello do

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

end
