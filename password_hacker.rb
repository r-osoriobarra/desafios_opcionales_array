#Desafío password hacker

#generar archivo con nuevo diccionario
def dictionary(dictionary_name)
    new_dictionary = File.open('diccionario.txt').read.split("\n")
    words = []
    new_dictionary.each do |e|
        words << e
        n = ""
        for i in 1..3
            n = n + i.to_s
            words << e + n
        end
    end
    File.write("#{dictionary_name}.txt", words.join("\n"))
end

#decifrar pass y numero de intentos
def hacking_attempts(dictionary_name, pass)
    data_pass = File.open("#{dictionary_name}.txt").read.split("\n")
    attempts = 0
    data_pass.each do |e|
        if e != pass
            attempts += 1 
        else
            return attempts
        end
    end
end

#argumentos de inicio
dictionary_name = ARGV[0]
pass = ARGV[1]

#llamar a metodos
dictionary(dictionary_name)
hacking_attempts(dictionary_name, pass)