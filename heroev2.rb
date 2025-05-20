class Personaje
  attr_accessor :nombre, :vida, :vida_maxima

  def initialize(nombre, vida)
    @nombre = nombre
    @vida = vida
    @vida_maxima = vida
  end

  def curarse(min, max)
    cantidad = rand(min..max)
    @vida += cantidad
    @vida = @vida_maxima if @vida > @vida_maxima
    cantidad
  end

  def recibir_daño(cantidad)
    @vida -= cantidad
    @vida = 0 if @vida < 0
  end

  def vivo?
    @vida > 0
  end
end

class Heroe < Personaje
  attr_accessor :ataques_especiales, :cooldown

  def initialize(nombre)
    super(nombre, 100)
    @ataques_especiales = 3
    @cooldown = 0
  end

  def ataque_normal
    rand(10..15)
  end

  def ataque_especial
    return nil if @ataques_especiales <= 0 || @cooldown > 0

    @ataques_especiales -= 1
    @cooldown = 2
    rand(20..30)
  end

  def bajar_cooldown
    @cooldown -= 1 if @cooldown > 0
  end
end

class Monstruo < Personaje
  def initialize(nombre, vida)
    super(nombre, vida)
  end

  def ataque
    rand(8..18)
  end
end

class Batalla
  def initialize(heroe, monstruo)
    @heroe = heroe
    @monstruo = monstruo
  end

  def mostrar_estado
    puts "\n🧑‍⚔️ #{@heroe.nombre}: #{barra_vida(@heroe.vida, @heroe.vida_maxima)}"
    puts "👹 #{@monstruo.nombre}: #{barra_vida(@monstruo.vida, @monstruo.vida_maxima)}"
  end

  def barra_vida(actual, max)
    barra = (actual * 20 / max).to_i
    verde = "\e[32m#{"█" * barra}\e[0m"
    roja = "░" * (20 - barra)
    "#{verde}#{roja} (#{actual}/#{max})"
  end

  def turno_heroe
    puts "\n¿Qué deseas hacer?"
    puts "1. Ataque normal"
    puts "2. Ataque especial (#{@heroe.ataques_especiales} restantes, CD: #{@heroe.cooldown})"
    puts "3. Curarte"
    print "> "
    eleccion = gets.chomp.to_i

    case eleccion
    when 1
      daño = @heroe.ataque_normal
      @monstruo.recibir_daño(daño)
      puts "💥 Atacaste al monstruo e hiciste #{daño} de daño."
    when 2
      daño = @heroe.ataque_especial
      if daño
        @monstruo.recibir_daño(daño)
        puts "🔥 ¡Ataque especial exitoso! Hiciste #{daño} de daño."
      else
        puts "❌ No puedes usar el ataque especial ahora."
        turno_heroe
      end
    when 3
      curado = @heroe.curarse(10, 20)
      puts "💖 Te curaste #{curado} de vida."
    else
      puts "Opción inválida."
      turno_heroe
    end
  end

  def turno_monstruo
    daño = @monstruo.ataque
    @heroe.recibir_daño(daño)
    puts "👹 El monstruo te atacó e hizo #{daño} de daño."
  end

  def iniciar
    puts "\n⚔️ ¡La batalla comienza!"
    sleep(1)

    while @heroe.vivo? && @monstruo.vivo?
      mostrar_estado
      turno_heroe
      break unless @monstruo.vivo?

      sleep(1)
      turno_monstruo
      @heroe.bajar_cooldown
      sleep(1)
    end

    mostrar_estado
    resultado
  end

  def resultado
    if @heroe.vivo?
      puts "\n🏆 ¡Has derrotado al monstruo! ¡Eres un verdadero héroe!"
    else
      puts "\n💀 Has caído en combate... el monstruo ha vencido."
    end
  end
end

# === MENÚ PRINCIPAL ===
def inicio
  system("clear") || system("cls")
  puts "🧙‍♂️ Bienvenido al Juego de Batalla por Turnos"
  print "Ingresa tu nombre, héroe: "
  nombre = gets.chomp.strip.capitalize
  nombre = "Héroe" if nombre.empty?

  heroe = Heroe.new(nombre)
  monstruo = Monstruo.new("Gárgola de las Sombras", 100)

  juego = Batalla.new(heroe, monstruo)
  juego.iniciar
end

inicio
