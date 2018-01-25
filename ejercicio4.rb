def menu_principal
  puts "\n------------------ Menu Productos -------------------"
  puts '1) Cantidad de productos existentes'
  puts '2) Stock total de un Producto'
  puts '3) Productos no registrados por bodega'
  puts '4) Productos con existencia menor a:'
  puts '5) Nuevo Producto'
  puts '6) Salir'
  puts "-----------------------------------------------------\n"
end

def menu_opcion1
  puts "\n---> 1) Cantidad de productos existentes ------------"
  puts 'a) Mostrar la existencia por productos'
  puts 'b) Mostrar la existencia total por tienda'
  puts 'c) Mostrar la existencia total en todas las tiendas'
  puts 'd) Volver al menú principal'
  puts "-----------------------------------------------------\n"
end

def abrir_archivo(archivo)
  file = File.open(archivo, 'r')
  stock = file.readlines
  file.close
  stock
end

def uno_a(stock)
  stock.each do |data|
    suma = 0
    data.each do |item|
      suma += item.to_i if item != 0 && item != 'NR'
    end
    puts "Producto #{data.first} tiene cantidad #{suma}"
  end
end

def uno_b(stock)
  suma = 0
  stock.each do |data|
    data.each do |item|
      suma += item.to_i if item != 0 && item != 'NR'
    end
  end
  puts "La cantidad total de productos es #{suma}"
end

def uno_c(stock)
  suma = 0
  stock.each do |data|
    data.each do |item|
      suma += item.to_i if item != 0 && item != 'NR'
    end
  end
  puts "La existencia total de productos es #{suma}"
end

stock = abrir_archivo('stock.txt')

stock = stock.map { |ele| ele.split(', ').map(&:chomp).to_a }

print stock

loop do
  menu_principal
  numero = gets.chomp.to_i

  salida = false

  case numero
  when 1
    menu_opcion1
    letra = gets.chomp.to_s

    case letra
    when 'a'
      # existencia por producto
      uno_a(stock)
    when 'b'
      uno_b(stock)
    when 'c'
      uno_c(stock)
    end

  when 2
  when 3
  when 4
  when 5

  when 6
    # Salir
    puts 'Tu necesitas salir!!! Chao!'
    salida = true
  else
    puts 'Error en selección. Intente otro número.'
  end

  break if salida
end
