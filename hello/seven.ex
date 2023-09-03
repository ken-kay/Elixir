defmodule Seven do
  defstruct name: "", continent: ""
  #alias Hello.Seven

  @type t :: %Seven{
    name: String.t(),
    continent: String.t()
  }

  @spec all() :: [t()]
  def all() do
    [
      %Seven{name:"Kenani", continent:"Africa"},
      %Seven{name:"Gaetan", continent:"Antarctica"},
      %Seven{name:"Ken", continent:"Asia"},
      %Seven{name:"Steve", continent:"Europe"},
      %Seven{name:"Tea", continent:"North America"},
      %Seven{name:"Marcos", continent:"South America"},
      %Seven{name:"Jennifer", continent:"Oceania"}
    ]
  end

  def print_list(seven) do
    Enum.each(seven, fn %{name: name} -> IO.puts(name) end)
  end

end
