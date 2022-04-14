require_relative 'calculadora'

calculadora = Calculadora.new()

loop do 
    calculadora.solicita_operacao
    break if calculadora.valida_operacao
end

puts "Informe qual o primeiro número da operação:"
loop do
    @numero1 = gets.chomp 
    break if calculadora.valida_numero @numero1
end

calculadora.numero1 = @numero1.to_f

puts "Informe qual o segundo número da operação:"
loop do
    @numero2 = gets.chomp
    break if calculadora.valida_numero @numero2
end

calculadora.numero2 = @numero2.to_f

calculadora.calcular 

puts "o resultado da operação é: #{calculadora.resultado}"


