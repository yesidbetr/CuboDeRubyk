# POO

## Clases
```ruby
class Persona
    def initialize(nombre)
        @nombre = nombre
    end

    # Método de prueba
    def saludar
        puts "hola soy: #{@nombre}"
    end

    # método privado
    private
    def secreto
        puts "soy un metodo privado"
    end

    # método protegido
    protected
    def mostrar_nombre
        puts @nombre
    end
end

# Creacion de objeto
persona1 = Persona.new("Maria")

# Puedo llamar al metodo publico
persona1.saludar

# dará error porque solo puede ser llamado dentro de la clase
persona1.secreto
```

> Los métodos son acciones que un objeto puede hacer, se definen en 
> - privados, solo se pueden usar dentro de la clase
> - publicos, normal
> - protegidos, solo el objeto y otros pueden usarlo

