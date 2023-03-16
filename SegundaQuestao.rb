# 2) Dado a sequência de Fibonacci, onde se inicia por 0 e 1 e o próximo valor sempre será
# a soma dos 2 valores anteriores (exemplo: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...), 
#escreva um programa na linguagem que desejar onde, informado um número, ele calcule a sequência de Fibonacci 
#e retorne uma mensagem avisando se o número informado pertence ou não a sequência.

# IMPORTANTE: 
# 	Esse número pode ser informado através de qualquer entrada de sua preferência ou pode ser previamente 
#definido no código;

def fibonacci(num)
    sequencia = [0,1]
    result = 0
    i = 0
    while  i < 10
        result = sequencia[i] + sequencia[i+1]
        sequencia << result
        i = i + 1
    
    end
    cont = 0
    sequencia.each do |e|
        if num == e
          puts "O número digitado pertence a sequência de Fibonacci."
          cont = 0
          break
        else
            cont = cont + 1
           
        end
        
    end
    if cont > 0  
        puts "O número digitado não pertence a sequência de Fibonacci."
    end
end
puts "Digite o número desejado."
num_desejado = gets.to_i
fibonacci(num_desejado)