list = ["Francisco", "Javier", "Falcón", "Soto"]

defmodule Greeter do
  def hi(names) do
    Enum.join(names, " ")
    |>phrase()
  end

  defp phrase(full_name), do: "Hola #{full_name}"
end

IO.puts Greeter.hi(list)