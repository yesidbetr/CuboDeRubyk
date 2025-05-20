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

# creacion de objetos
persona1 = Persona.new("Maria")

# puedo llamar al publico
persona1.saludar

# dará error porque solo puede ser llamado dentro de la clase
persona1.secreto