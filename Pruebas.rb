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