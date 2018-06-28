a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
 # Utilizando map generar un nuevo arreglo con cada valor aumentado en 1.
 b = a.map { |e| e + 1 }
 p b
# Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a float.

c  = a.map { |e| e.to_f }
p c

# Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a string.
d =  a.map{ |e| e.to_s }
p d

# Utilizando reject descartar todos los elementos menores a 5 en el array.
 p a.reject{ |i| i < 5}

# Utilizando select descartar todos los elementos mayores a 5 en el array.
p a.select{|i| i > 5}

# Utilizando inject obtener la suma de todos los elementos del array.
p a.inject{|sum , n| sum + n}

# Utilizando group_by agrupar todos los números por paridad (si son pares, es un grupos, si son impares es otro grupo).

p a.group_by {|i| i.even?}

# Utilizando group_by agrupar todos los números mayores y menores que 6.
p a.group_by { |i| i > 6}
