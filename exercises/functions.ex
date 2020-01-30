#Coincidencia de patrones, las variables, tanto mapas como variables normales, están coincidiendo con lo que reciben de parámetros,
#En este caso un mapa, donde se extraen y asignan valores por coincidencia de llaves y se asigna el mapa completo al declarar una variable
#La comparación se hace entre el patrón y los parámetros recibidos, no entre las variables declaradas

person = %{
  name: "Pancho",
  age: "26",
  favorite_color: "Black"
}

defmodule Greeter do
  def hello(person = %{name: person_name} = person1 = %{age: age} = %{favorite_color: favorite_color}) do
    IO.puts "Hello #{person_name}"
    IO.inspect person
    IO.inspect person1
    IO.puts "Edad: #{age}\nColor: #{favorite_color}"
  end
end

Greeter.hello(person)
