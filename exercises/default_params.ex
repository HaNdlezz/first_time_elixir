#Parámetros por defecto

defmodule Greeter do
  def hello(name, language_code \\ "en") do
    phrase(language_code) <> name
  end

  defp phrase("en"), do: "Hello, "
  defp phrase("es", insulto \\ "JOLAPEEE"), do: "Hola, #{insulto}"
  defp phrase("en", insulto), do: "Hello, #{insulto}"
end

IO.puts Greeter.hello("Pancho", "es")
