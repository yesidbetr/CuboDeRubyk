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