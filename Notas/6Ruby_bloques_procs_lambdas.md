# Bloques, Procesos y Lambdas

## Bloques
```ruby
mi_metodo {
    puts "hola desde un bloque"
}

mi_metodo2 do
  puts "Este es otro bloque"
end
```

## Procesos
Los procesos me encapsulan un bloque
```ruby
mi_proc = Proc.new {
    puts "soy un proc"
}
mi_proc.call
```

## Lambdas
```ruby
mi_lambda = -> {puts "soy un lambda"}
mi_lambda.call
```