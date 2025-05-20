# Conceptos básicos

## variables normales
```ruby
valor = 78
```

## variables globales
```ruby
$edad = 100
```

## variables de instancias
```ruby
class Persona

    # El objeto initialize se ejecuta automaticamente
    def initialize
        @edad = 30
    end

    def mostrar_edad
        puts @edad
    end
end

# .new me crea el objeto
objeto_persona = Persona.new
# me ejecuta el método mostrar_edad
objeto_persona.mostrar_edad
```

## variables de clase

```ruby
class Persona
    @@total = 0

    def initialize
        @@total = @@total + 1
    end

    # self es método de clase, se usa con la clase
    def self.mostrar_total
        puts @@total
    end
end

persona1 = Persona.new
Persona.mostrat_total
```

## Tipos de datos
```ruby
# booleanos
valor = false
valor = true

# simbolos
color = :azul
```

## Entradas salidas
```ruby
puts "Escribe tu nombre y apellido: "
nombre_apellido = gets
puts "Tu nombre y apellido es: " + nombre_apellido
```
