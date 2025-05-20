# Estructuras de control
> Normalmente todos los cicloso estructuras se cierran con el `end` al final

## unless
Funciona como un ``if``, pero al revés, commo un ``if not``, por ejemplo, un ``if`` si es ``true`` se ejecuta, si un ``unless`` es ``false``, se ejecuta, por ejemplo

```ruby
llueve = false

unless llueve
    puts "sal a pasear"
end
```

## case
```ruby
dia = "lunes"

case dia
when "lunes"
    puts "es lunes"
when "martes"
    puts "es martes"
else
    puts "es otro dia"
end
```

## until y while
El until repite hasta que la condición se verdadera, el while repite hasta que la condición sea falsa.
```ruby
# until
contador = 0

until contador == 5
    puts contador
    contador = contador + 1
end

# while
contador = 0

while contador != 5
    puts contador
    contador = contador + 1
end
```

## for
```ruby
for n in [1, 2, 3]
    puts n
end
```

> Según veo el ``for`` el ruby no se usa tanto, se prefiere usar el `each`
## each
```ruby
[1, 2, 3].each do |n|
    puts n
end
```

## modificadores
Es usar las estructuras en una sola linea de código
```ruby
puts "mostrar si es true" if  true
```