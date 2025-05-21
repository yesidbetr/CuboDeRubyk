# Metaprogramación

## Métodos dinámicos (define_method)
```ruby
class Persona
    # El %w me permite escribir arrays sin comillas, ni comas.
    %w[saludando corriendo].each do |accion|
      define_method(accion) do
        puts "Estoy #{accion} ahora"
      end
    end
end

persona1 = Persona.new
persona1.saludando
persona1.corriendo
```

## Eval
> Eval permite ejecutar código que está en un string

```ruby
codigo = "puts 'Hola desde eval'"
eval(codigo)
```

## Relexion
> Permite manipular objetos en tiempo de ejecución

### ``method_missing``
Útil para manejar errores, o como tal manejar métodos que no existen
```ruby
class Fantasma
  def method_missing(nombre_metodo, *args)
    puts "Intentaste llamar a un método '#{nombre_metodo}' no existente"    
  end
end

fantasma1 = Fantasma.new
fantasma1.saludar
```

### `send`
Permite llamar a un método, inlcuso si es privado

```ruby
class Secreto
    private
    def susurrar
      "soy un metodo privado"
    end
end

secreto = Secreto.new
# Si ejecutara esto así, me daria error
secreto.susurrar

# Esto si lo ejecutaria
puts secreto.send(:susurrar)
```