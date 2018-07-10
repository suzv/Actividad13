restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

#Obtener el plato mas caro.
#Obtener el plato mas barato.
#Sacar el promedio del valor de los platos.
#Crear un arreglo con solo los nombres de los platos.
#Crear un arreglo con solo los valores de los platos.
#Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
#Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.


print restaurant_menu.max_by{|k, v| v}
puts "\n"

print restaurant_menu.min_by{|k, v| v}
puts "\n"

a = restaurant_menu.values
puts a.inject(0){ |sum, ed| sum + ed } / a.size
puts "\n"

new_a = Array.new restaurant_menu.keys
print new_a
puts "\n"

new_b = Array.new restaurant_menu.values
print new_b
puts "\n"

c = restaurant_menu.map do |x,y|
  y * 1.19
end
print c
puts "\n"



b = restaurant_menu.select {|k,v| k.split.size > 1}
print b
puts "\n"

b.each { |k, v| b[k] = v * 0.8 }
print b
