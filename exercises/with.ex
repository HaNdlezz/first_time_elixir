import Integer

m = %{a: :2, c: 3}

a =                                                  
	with {:ok, number} <- Map.fetch(m, :a),              
		true <- is_even(number) do                           
			IO.puts "#{number} divided by 2 is #{div(number, 2)}"
			:even                                                
	else                                                 
    :error ->                                            
      IO.puts("else")                                      
      :error                                               
    _->                                                  
      IO.puts("default")
      :odd
	end

IO.puts a