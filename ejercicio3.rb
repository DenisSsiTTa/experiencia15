def lineas_archivo(archivo)
  pelis = abrir_archivo(archivo)

  contador = 0
  pelis.each { |i| contador += i.split(' ').count }
  puts contador
end

def contar_palabra(archivo, palabra)
  pelis = abrir_archivo(archivo)

  contador = 0
  pelis.each do |i|
    i.split(' ').each do |word|
      contador += 1 if word == palabra
    end
  end
  puts contador
end

def abrir_archivo(archivo)
  file = File.open(archivo, 'r')
  pelis = file.readlines
  file.close
  pelis
end

lineas_archivo('peliculas.txt')

contar_palabra('peliculas.txt', 'los')
