def lineas_archivo(archivo)
  file = File.open(archivo, 'r')
  puts file.readlines.count
  file.close
end

lineas_archivo('peliculas.txt')
