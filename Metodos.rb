if __FILE__ == $0
  # TODO Generated stub
end

#metodos.rb.
#Definicion de un método.*******************************************************
  def hola
    puts 'Hola México'
  end
 #uso del método
 hola
 
 #Método con un argumento. *****************************************************************
   
   def hola1(nombre)
     puts 'Hola Ing: ' + nombre
     return 'correcto'
 end
 
puts (hola1('Albert'))
 
 
#Método con un argumento (sin paréntesis, no funciona en versione nuevas). ****************************************
def hola2 nombre2
  puts 'Hola Ing: ' + nombre2
return 'correcto'
end
puts(hola2 'Alberto')

#Métodos bang (!).**********************************************************************************************
a= "En algun lugar de la mancha"

#Método sin bang: el objeto no se modifica
b= a.upcase
puts b
puts a

puts "\n"

#Método con bang: el objeto se modifica. 
c=a.upcase!
puts c
puts a


#Alias
#alias nuevo_nombre nombre_original. *******************************************************************************

def viejo_metodo
  "viejo_método"
end

alias nuevo_metodo viejo_metodo
  
  def viejo_metodo
    "viejo método mejorado"
  end

puts viejo_metodo
  puts nuevo_metodo
    

#Métodos perdidos. ***********************************************************************************
  class Dummy
    def method_missing(m, *arg)
      puts "No existe un método llamado #{m}"
    end
  end
  
  Dummy.new.cualquier_cosa 
  
  #Argumentos.rb ************************************************************************************************
  
  def mtd(arg1="Dibya", arg2="Shashank", arg3="Shashank", arg4="Ing: Alberto")
    "#{arg1}, #{arg2}, #{arg3}, #{arg4}."
  end
  puts mtd
  puts mtd("ruby")
  
  
  #Número de argumentos variable. ************************************************************************
  def foo(*mi_string)
    mi_string.each do |palabras|
      puts palabras
      
    end
  end
  
  foo('hola', 'mundo')
  foo ('*')
  foo('0', '2', '3', '4', '5', '6', '7')
  
  
  #Argumentos Opcionales. *****************************************************************************************
=begin
Ejemplo de como los argumentos
se interpretan de izquierda a derecha
=end

puts "\n"

def mtd(a=15, b=a+5, c=a+b, d=c*2)
 [a,b,c,d]
end
puts mtd

#Rangos
#Secuencia. *****************************************************************************************************
(1..3).to_a  #es la secuencia 1, 2, 3 :donde los puntos límites están incluidos
(1...5).to_a  #equivale a 1, 2, 3, 4  :donde no esta incluida el límite superior

#Métodos
  nums = -1..10
  puts nums.include?(5)  # verdadeo o true
  puts nums.include?(11)
  puts nums.include?(3.14169)
  puts nums.include?('i')
  puts nums.min          # -1
  puts nums.max          # 9
  puts nums.reject {|i| i< 5} # [5, 6, 7, 8, 9]
  puts nums.reject {|j| j> 5}
  #Comprobación si determinado número o letra esta en el rango declarado.
  (1..10) === 6
  (1..10) === 15
  (1..10) === 3.14159
  ('a'..'j')=== 'c'
  
  
  #Arreglos o vectores. ***********************************************************************************
  #arreglo vacio
  
  vec1 = []
  
  #Los indices empiezan desde cero (0,1,2,3,.....)
  nombres = ['Satish', 'Talim', 'Ruby', 'java', 'Csharp']
  puts nombres[0]
  puts nombres[1]
  puts nombres[2]
  puts nombres[3]
  puts nombres[4]
  
  #si el elemento no existe, se devuelve nil
  puts nombres[5]
  #pero podemos añadir a posteriores más elementos
  puts nombres[4]= 'Python'
  puts nombres[5]= 'Rails'
  
=begin
  un arreglo cuyos elementos
apunta a otros tres objetos:
un decimal, un string y un array
=end  
  
  sabor = 'mango'
  vec4 = [80.5, sabor, [true, false]]
  puts vec4[2]
  
  
  #Usando %w
  nombres1 = ['ana', 'laura', 'alberto', 'bety', 'katya']
  puts nombres1[2]
  puts nombres1[3]
  
  #esto es más sencillo y más rápido:
 #nombres2 = %w { ana laura alberto bety katya }
 # puts nombres2[1]
  #puts nombres2[3]  
  
  #El método each, extrae cada elemento del array dentro de la variable que se le especifique.
  ciudades = ['España', 'Alemania', 'Inglaterra','kairo']
  ciudades.each do |ciudad|
  puts '!Me gusta ' + ciudad + '!'
  puts '!¿A ti y/n?'
  end
  puts '!¿A ti no?'
  
  #El método {{**delete**}} borraun elemento
  ciudades.delete ('kairo')
  ciudades.each do |ciudad|
    puts '!Me gusta ' + ciudad + '!'
  puts '!¿A ti no?'
end

#Otros métodos
  vec = [34, 12, 1, 38, 40]
  puts vec.sort  #Ordena de manera creciente
  puts vec.length # Nos el tamaño del vector 
  puts vec.first
  puts vec.last
  
  