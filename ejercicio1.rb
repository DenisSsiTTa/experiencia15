def crea_index(palabra1, palabra2, arreglo, color, pagina)
  color_p = color.nil? ? '' : "style=background-color:#{color}"

  index = '<html><body>'
  index << "<p #{color_p}>#{palabra1}</p>"
  index << "<p #{color_p}>#{palabra2}</p>"
  index << "<p #{color_p}>#{arreglo.sort}</p>" unless arreglo.nil?
  index << '</body></html>'
  graba_archivo(index, pagina)
end

def graba_archivo(index, archivo)
  file = File.open(archivo, 'w')
  file.puts index
  file.close
end

crea_index('palabra1', 'palabra2', nil, nil, 'index.html')

crea_index('palabra1', 'palabra2', [20, 4, 3, 8, 6], nil, 'index2.html')

crea_index('palabra1', 'palabra2', [20, 4, 3, 8, 6], 'yellow', 'index3.html')
