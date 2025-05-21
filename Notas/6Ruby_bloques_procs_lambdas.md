# Bloques, Procesos y Lambdas

## Bloques
Ejemplo1
```ruby
mi_metodo {
    puts "hola desde un bloque"
}

mi_metodo2 do
  puts "Este es otro bloque"
end
```
Ejemplo2
```ruby
def saludar_con_nombre
  puts "Hola"
  yield
  puts "que gusto verte"
end

# esto es un bloque
saludar_con_nombre do
  puts "Me llamo andres"
end
```

## Procesos
> Los procesos me encapsulan un bloque.

Ejemplo1
```ruby
mi_proc = Proc.new {
    puts "soy un proc"
}
mi_proc.call
```
Ejemplo2
```ruby
mi_proc = Proc.new do
  puts "Este codigo esta dentro de un proc"
end

mi_proc.call
```

## Lambdas
> Un lambda puede ejecutar un `return`

Ejemplo1
```ruby
mi_lambda = -> {puts "soy un lambda"}
mi_lambda.call
```
Ejemplo2
```ruby
mi_lambda = -> (nombre) do
  puts "Hola #{nombre}"
end

mi_lambda.call("Andres")
```