#Desafío opcional - transformando segundos a minutos

=begin
Se tiene un arreglo con la cantidad de segundos que demoraron algunos procesos y se necesita un
método para trasformar todos los datos a minutos (las fracciones de minuto serán ignoradas).
Para realizar este programa se debe crear el archivo s_to_m.rb .
El método debe llamarse to_minutes . Debe recibir el arreglo con los tiempos en segundos y
devolverlo con los tiempos en minutos.
=end

def to_minutes(array)
    n = array.count
    minutes = []

    n.times do |i|
        minutes.push (array[i]/60)
    end
    return minutes
end

seconds = [100, 50, 1000, 5000, 1000, 500]
print to_minutes(seconds)