inventario = {'Notebooks'=> 4, 'PC Escritorio'=>  6, 'Routers'=>  10, 'Impresoras'=>  6}


puts 'elige una opcion'
puts    ' 1 para agregar un item y su stock'
puts    ' 2 para borrar un item'
puts    ' 3 para actualizar un item'
puts    ' 4 para saber el stock total'
puts    ' 5 para saber que item tiene mayor stock'
puts    ' 6 para saber si un item existe'
puts    ' 7 para salir'

opcion = gets.chomp.to_i

while opcion != 7
  puts case opcion
  when 1
    print 'Agrega un item y su stock'
    puts "\n"
    item, stock = gets.chomp.split
    inventario[item] = stock
    print inventario
  when 2
    print 'Selecciona que item deseas borrar (Notebooks, PC Escritorio, Routers o Impresoras)'
    puts "\n"
    borrar = gets.chomp
    inventario.delete(borrar)
    print inventario
  when 3
    print 'Que item deseas actualizar'
    puts "\n"
    item_nuevo = gets.chomp
    print 'cual es su stock'
    stock_nuevo = gets.chomp
    inventario[item_nuevo] = stock_nuevo
    print inventario
  when 4
    total = inventario.inject(0) { |sum, e| sum += e[1]}
    print "El stock total es #{total} "
  when 5
    max = inventario.max_by{|k,v| v}
    print "el item con mayor stock es #{max}"
  when 6
    print 'Ingresa el item que buscas'
    puts "\n"
    existe = gets.chomp
    if inventario.key?(existe)
      print 'si existe'
    else
      print 'no existe'
    end
  else
    puts 'ingrese un numero nuevo'
  end
end
