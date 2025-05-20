# Colecciones y estructuras de datos

## Array
Los arrays funcionan igual como en python.

### Método map
Transforma cada datos según le indicamos (n*2)
```ruby
numeros = [1,2,3]

new_list = numeros.map do |n|
    n * 2
end

puts new_list
```

### Método select
Me filtra los datos según la condición indicada (n>2)
```ruby
numeros = [1,2,3]

new_list = numeros.select do |n|
    n > 2
end

puts new_list
```

### Reduce
Reduce toma una lista y la convierte en un solo valor
```ruby
numeros = [1,2,3]

# reduce(<valor desde donde va a empezar>)
# count es como el acumulador, y n el elemento actual
unsolovalor = numeros.reduce(0) do |count, n|
    count + n
end
```

## Hashes
Algo similar a dict
```ruby
persona = {
    "nombre" => "Juan Ramirez",
    "edad" => 34
}

persona.each do |clave, valor|
    puts "#{clave}: #{valor}"
end
```

## Enumerables (yield y block)
```ruby
# yield
def saludar
    puts "hola"
    yield
    puts "adios"
end

saludar do 
    puts "este es un bloue de código
end
```

```ruby
# &block
def ejecutar_bloque(&blokc)
    block.call
end

ejecutar_bloue do 
    puts "Bloque ejecutado"
    suma = 1+2
    puts suma
end
```