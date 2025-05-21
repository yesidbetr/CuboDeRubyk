# Manejo de excepcioens

## Bloque begin/rescue/ensure
```ruby
begin
    # código que puede lanzar un error
rescue
    # código que se ejecuta si se produce un error
ensure
    # código que se ejecuta siempre, haya o no error
end
```
### Ejemplo
```ruby
def dividir(a,b)
    begin 
        resultado = a/b
        puts resultado
    rescue ZeroDivisionError => e
        puts "No se puede dividir por cero: #{e.message}"
    rescue => e
        puts "No se puede dividir: #{e.message}"
    ensure
        puts "Fin del programa"
    end
end

puts dividir(10,0)
```

## Creación de excepciones personalizadas
```ruby
class EdadInvalidaError < StandardError
  def registrar_usuario(nombre,edad)
    raise EdadInvalidaError, "La edad debe ser un número mayor que cero" if edad <= 0
    puts "Usario #{nombre} registrado con la edad #{edad}"
  rescue EdadInvalidaError => e
    puts "Error al registrar el usuario: #{e.message}"
  end
end

edad = EdadInvalidaError.new
edad.registrar_usuario("Juan", 0)
```