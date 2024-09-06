require 'faker' #Solicitamos la gema FAKER

cantantes = [] #Creamos un arreglo vacio, se llenara despues



100.times do #Se crea un ciclo 100 veces para generar cantantes con datos como nombre, correo, domicilio.
    
    #Genera nombre, correo y domicilio de manera aleatoria
    nombre = Faker::Name.name
    correo = Faker::Internet.email(name:nombre)
    domicilio = Faker::Address.full_address

    cantante = { #Crea un hash que contiene el nombre, correo y domicilio del cantante.
        nombre: nombre,
        correo: correo,
        domicilio: domicilio
    }

    cantantes << cantante # Agrega el hash 'cantante' al arreglo 'cantantes'.
end

cantantes.each_with_index do |cantante, index| # Itera sobre el arreglo 'cantantes' junto con el índice de cada elemento.
    
    #Imprime cada cantante
    puts "Cantante #{index + 1}: "
    puts "Nombre: #{cantante[:nombre]}"
    puts "Correo: #{cantante[:correo]}"
    puts "-" * 40#esto crea una linea con 40 guiones
end
