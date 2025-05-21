def saludar_con_nombre
  puts "Hola"
  yield
  puts "que gusto verte"
end

# esto es un bloque
saludar_con_nombre do
  puts "Me llamo andres"
end

# mi_proc = Proc.new do
#   puts "Este codigo esta dentro de un proc"
# end

# mi_proc.call

mi_lambda = -> (nombre) do
  puts "Hola #{nombre}"
end

mi_lambda.call("Andres")
