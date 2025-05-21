class Secreto
    private
    def susurrar
      "soy un metodo privado"
    end
end

secreto = Secreto.new
# secreto.susurrar

puts secreto.send(:susurrar)