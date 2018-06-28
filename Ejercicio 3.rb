list = [{:nombre=>"Exequiel Marin", :edad=>27, :comuna=>"Lo Espejo", :genero=>"Masculino"}]
# Crear un menú que permita registrar la información de los alumnos del curso.

# Opción 1: Permite ingresar los datos de una persona:
#
# Nombre
# Edad
# Comuna
# Género

def add_person(array)
  puts 'Ingrese nombre'
  name = gets.chomp
  puts 'Ingrese edad'
  age = gets.chomp
  puts 'Ingrese Comuna'
  commune = gets.chomp
  puts 'Ingrese genero (Masculino/Femenino)'
  gender = gets.chomp
  array.push(nombre: name, edad: age.to_i, comuna: commune, genero: gender)
  print "Se ha ingresado el usuario \n #{array}"
end

def update_date(people)
puts 'Ingrese nombre de alumno para editar'
name = gets.chomp
elegido = people.select{|person| person [:nombre] == name}
people.delete_if {|person| person[:nombre] == name}
puts 'Estos son los valores elegidos'
puts elegido
add_person(people)

end

def delete_person(people)
puts 'Ingrese nombre de alumno'
name = gets.chomp
elegido = people.select{|person| person [:nombre] == name}
if elegido.length == 0
  puts "El usuario #{name} no existe"
else
people.delete_if {|person| person[:nombre] == name}
puts "El usuario eliminado es #{name}"
  end
print people
end

def count_person(people)
  print people.count
end

def search_commune(array)
  array.select{|ele| puts ele[:comuna].downcase}
 puts "Comunas: #{array.uniq}"
end

def person_age(people)
 people.select do |ele|
 puts ele[:nombre] if ele[:edad] >= 20 && ele[:edad] <= 25
  end
end

  def sum_age(people)
  suma = people.inject(0) { |sum, e| sum + e[:edad] }
end

def average_person(people)
  suma = people.inject(0) { |sum, e| sum + e[:edad] }
  suma /people.length
end

def gender(people)
  people.select do |person|
     if person[:genero] == 'Masculino'
       puts "Los hombres son #{person[:nombre]}"
     else
       puts "Las mujeres son #{person[:nombre]}"
     end
   end
end



puts "Sistema de Registro de personas"
puts '########################################################'
option = 0
while option != 10
  puts "ingresa 1 para agregar datos de la personar"
  puts "ingresa 2 para actualizar datos de la personas"
  puts "ingresa 3 para eliminar una personas"
  puts "ingresa 4 para ver la cantidad de personas ingresadas"
  puts "ingresa 5 para ver las comunas de las personas"
  puts "ingresa 6 para ver todas las personas que tengan entre 20 y 25 años"
  puts "ingresa 7 para ver la suma de las edades de todas las personas"
  puts "ingresa 8 para mostrar el promedio de las edades del grupo"
  puts "ingresa 9 Muestra dos listas de personas, una por cada género" # hacer con select
  puts "ingresa 10 para salir"

  option = gets.chomp

  puts case option

  when '1'
    add_person(list)
  when '2'
    update_date(list)
  when '3'
    delete_person(list)
  when '4'
    count_person(list)
  when '5'
    search_commune(list)
  when '6'
    person_age(list)
  when '7'
    sum_age(list)
  when '8'
    average_person(list)
  when '9'
    gender(list)
  when '10'
    exit
  end
end
