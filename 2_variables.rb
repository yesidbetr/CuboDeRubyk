# variable normal
valor = 78

# variable global
$edad = 100

# variable de instancias
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