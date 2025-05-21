# POO

## Clases
> Los métodos son acciones que un objeto puede hacer, se definen en 
> - **Privados**, solo se pueden usar dentro de la clase, y sin el prefijo self.
> - **Publicos**, son los por defecto, se peuden llamar desde fuera de la clase.
> - **Protegidos**, solo el objeto y otros pueden usarlo, pero dentro de la clase

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
        "soy un metodo privado"
    end

    # método protegido
    protected
    def mostrar_nombre
        puts @nombre
    end

    # ejemplo al llamado del método secreto
    public
    def llamado_secreto
        puts "hola " + secreto
    end
end

# creacion de objetos
persona1 = Persona.new("Maria")

# puedo llamar al publico
persona1.saludar

# dará error porque solo puede ser llamado dentro de la clase, probarlo y luego comentarlo
persona1.secreto

# ahora si va a funcionar
persona1.llamado_secreto
```

## Herencia
```ruby
# Clase base o padre
class Vehiculo
  def initialize(marca)
    @marca = marca
  end

  def mostrar_marca
    puts "Este vehículo es de la marca: #{@marca}"
  end
end

# Clase hija que hereda de Vehiculo
class Auto < Vehiculo
  def encender_motor
    puts "El motor del auto está encendido."
  end
end

# Creamos una instancia de Auto, que es una subclase de Vehiculo
mi_auto = Auto.new("Toyota")
# Llamamos a un método propio de la clase Auto
mi_auto.encender_motor
# Llamamos a un método heredado de la clase Vehiculo
mi_auto.mostrar_marca
```

## Modulos
```ruby
module Habilidades
    def correr
        puts "está corriendo"
    end
end

class Persona

    include Habilidades
    
    def initialize(nombre)
        @nombre = nombre
    end
end

persona = Persona.new("Juan")
persona.correr
```

## Attr_reader, attr_writer, attr_accessor
Los attr siempre van antes que cualquier método, al principio de la clase.
> - ``attr_reader`` es un método para lectura (get)
> - `attr_writer` es un método para escritura (set)
> - `attr_accessor` es un getter y setter.

```ruby
class Persona
    attr_reader :nombre
    attr_writer :edad
    attr_accessor :pais

    def initialize(nombre, edad, pais)
        @nombre = nombre
        @edad = edad
        @pais = pais
    end

    def get_edad
      "edad actual: #{@edad}"
    end
end

persona1 = Persona.new("Juan", 30, "Argentina")

# El attr_reader queda como un método de lectura, donde podemos llamarlo con el nombre del simbolo, que es el de la variable.
puts persona1.nombre
# El attr_writer queda como un método de escritura, solo podemos usarlo para settear una variable, si queremos verlo hay que crear otro método.
persona1.edad = 31
puts persona1.get_edad
# el accesor funciona como ambos, setter y getter. 
puts persona1.pais
persona1.pais = "Chile"
puts  persona1.pais
```