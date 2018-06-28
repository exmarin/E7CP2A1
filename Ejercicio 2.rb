nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

# Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método .select.
p nombres.select{|i| i.length > 5}

# Utilizando .map crear una arreglo con los nombres en minúscula.
lower_case = nombres.map { |e| e.downcase  }
p lower_case

# Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.
search = nombres.select {|e| e[0] == 'P'}
p search

# Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.

cantidad = nombres.map { |e| e.length }
p cantidad

# Utilizando .map y .gsub eliminar las vocales de todos los nombres.
name = nombres.map {|e| e.gsub(/[AaEeIiOoUu)]/,'')}
p name
