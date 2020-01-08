# defModule: se define un modulo
defmodule Calculator do

  def suma(x, y) do
    x + y
  end

  def resta(x, y) do
    x-y
  end

  def operación(:suma, x, y) do
    x+y
  end

  def operación(:resta, x, y) do
    x-y
  end

end

IO.puts("Escribo algo")
IO.inspect( Calculator.suma(10, 25) )
IO.inspect( Calculator.resta(10, 25) )
IO.inspect( Calculator.operación(:suma, 10, 25) )
IO.inspect( Calculator.operación(:resta, 10, 25) )