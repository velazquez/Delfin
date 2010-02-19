if __FILE__ == $0
  # TODO Generated stub
end

#p001hola.rb************************************************************************************************** 1
puts 'hola'

#Estructura de normas de código******************************************************************************* 2
puts 'Soy una clase = ' + self.class.to_s
puts 'Soy un objeto = ' + self.to_s
print 'Los métodos del objeto = ' 

puts self.private_methods.sort

#Números******************************************************************************************************* 3
puts 1 + 2
puts 10-11
puts 100-54
puts 2*3
puts (4*4/2)/2
#Si se quiere obtener el resultado en decimal,
#almenos uno de los dos tiene que se decimal******************************************************************* 4
puts 1.5 / 2.6
puts 3.0/2.0
puts 3/2.0

#************************************************************************************************************** 5
=begin
Problema del tablero de Ajedrez:
si en la primera casilla ponemos un grano,
y duplicamos la cantidad de granos en la siguiente,
y así hasta rellenar el tablero,
¿Cuántos granos tendremos?
=end

granos = 1 
64.times do |escaque|
  puts "Enel escaque # {escaque + 1} hay # {granos}"
  granos *=2
end


#Operador módulo************************************************************************************************** 6
puts (5 % 3)  #imprime 2
puts (-5 % 3)  #imprime 1
puts (5 % -3)  #imprime -1
puts (-5 % -3)  #imprime -2

#Strings o cadenas de texto**************************************************************************************** 7
puts "Hola mundo de RUBY"  #Se puede usar " o ' para los string, pero ' es más eficiente
puts 'Hola mundo de RUBY'

puts 'Me gusta' + 'Ruby'   #Juntando cadenas

puts 'Hola   * * * ' * 3     #Repetición de strings

PI = 3.1416;    #Definición de una constante
puts PI         # " "...


#Interpolación******************************************************************************************************* 8
puts "100 * 5 = #{100*5}" 

#Comillas dobles y comillas simples********************************************************************************** 9
  def di_adios(nombre)
    resultado = "Buenas noches, #{nombre}"
    return resultado
  end
  
  puts di_adios (' *** Albert ***')
=begin
      Cómo losmétodos devuelven el valor
        de la última línea, no hace falta
        el return.
        
        
=end

def di_adios2(nombre) 
  resultado = 'Buenas noches' + nombre
  end
puts di_adios2 ('   Alberto Velázquez')


#String#length devuelve el número de bytes de una cadena.******************************************************** 10
string = "Esto es una cadena"
string.length # => 18

#Ejemplo de asignación.****************************************************************************************** 11
s= 'Hola Mundo de Ruby'   #Las variables en ruby deben empezar con una letra minúscula o un guión bajo (_)
x= 10
PIs = 3.1416151514
puts PIs

myString = 'Yo soy bien chingon'    #Definición de  una variable local
puts myString
=begin
  Conversiones
to_i - convierte a número entero
to_f - convierte a número decimal
to_s - convierte a string
=end

var1 = 8
var2 = '2'  #Fijarse que es un texto
puts var1 + var2.to_i

puts var1 / var2.to_f

#.*************************************************************************************************************** 12
=begin
<< marca el comienzo de un string
y es seguido de  ' ó ". Aquí añadimos
el string junto conel retorno de carro (\n).
=end

a = 'molo'
a<<'mucho.
Molo mazo...'
puts a

puts "      *****  de otra forma   **** "

=begin
  ' ó " son los delimitadores de un string.
En este caso, podemos sustituirlos por END_STR.
END_STR es una constante delimitador de estrings.
=end

a = <<END_STR
Esta es la cadena
Y una segunda línea
Sumandole una tercera línea
END_STR
puts a


#Interpretación dinámica.****************************************************************************************

s = 'hola'
s.class 


#Las variables globales se distinguen porque estan precedidas del signo dólar ($)
#La variable $0 global contiene el nombre del fichero que Ruby está ejecutando.
#La variable $ global contiene los directorios en los que Ruby busca cuando se carga un fichero que no existe en el directorio de trabajo.
#La variable $$ contiene el id (identidad) del proceso que Ruby está ejecutando.


#gets y chomp. ****************************************************************************************************
puts "¿ En qué ciudad te gustaría vivir ? "
STDOUT.flush
ciudad = gets.chomp
puts "La ciudad es " + ciudad 

=begin
  STDOUT es una contante global que almacena las salidas del programa
.flush vacia cualquier dato almacenado, y por lo tanto limpiará cualquier resultado anterior.
chomp es un método para estring y gets almacena string que provienen del teclado.
El problema es que gets almacena lo escrito y el carácter '\n' ( retorno de carro ); chomp lo que hace es remover esa '\n'. 
=end

#Programa de conversión de grados Fahrenheit a grados Celsius.***********************************************************

 puts " Conversión de grados Fahrenheit a grados Celsius \n"
 puts "Introduce los  grados Fahrenheit "    # C=(F-32)/1.8  ó  C=(5/9)F
 
 
 
 