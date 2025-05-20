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