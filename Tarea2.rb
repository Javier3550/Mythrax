class ContadorDePalabras
    
    attr_accessor :txt
    
    
    def initialize(txt)# Constructor para inicializar las variables
      @txt = txt
    end
  
    # METODOS
    def count_repeated_words_owo
      # creamos el hash inicializado en 0, osea esta vacio
      count = Hash.new(0)
      
      # le damos un barridon a las palabras
      @txt.split.each do |word|
       
        word = word.downcase
       
        count[word] += 1
      end
      
      
      count # retornar el HASH 
    end
    def txtchanges(txt)
        @txt = txt
    end
  end
  
 
  txt = "casa 1 carro 2 bicicleta 1" 
  count = ContadorDePalabras.new(txt)
  r = count.count_repeated_words_owo
  
 
  r.each do |word, amount| # Imprimir el resultado
    puts "#{word}: #{amount}"
  end
puts "Introduzca otra cadena"
txt = $stdin.gets.chomp
count.txtchanges(txt)
r = count.count_repeated_words_owo

r.each do |word, amount| # Imprimir el resultado
    puts "#{word}: #{amount}"
end

