first_greeting = "Hello"
first_name = "Pancho"
greet = fn 
	(^first_greeting, ^first_name) -> IO.puts "#{first_greeting}, #{first_name}"
	(^first_greeting, name) -> IO.puts  "#{first_greeting}, #{name}"
	(first_greeting, first_name) -> IO.puts "#{first_greeting}, #{first_name}"
	end

greet.("Hello", "Pancho")
greet.("Hello", "Mene")
greet.("Helloooo", "mindy")
