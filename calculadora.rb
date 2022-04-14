class Calculadora
    attr_accessor :resultado
    attr_accessor :operacao
    attr_accessor :numero1
    attr_accessor :numero2

    def solicita_operacao
        puts "Informe qual operação deseja realizar:"
        puts "somar: digite 1"
        puts "subtrair: digite 2"
        puts "multiplicar: digite 3"
        puts "dividir: digite 4"
        puts "porcentagem: digite 5"
        puts "OBS: Para porcentagem, primeiro digite o valor da % do numero desejado"
        self.operacao = gets.strip.to_i
    end

    def valida_operacao 
        if (self.operacao >0 && self.operacao < 6)
            return true 
        else 
            puts "operação invalida"
            return false
        end
    end

    def valida_numero numero
        if numero =~ /^-?[0-9]+$/
            return true
        else
            puts "Valor inválido, digite um valor válido (número):"
            return false
        end
    end
    
    def calcular 
        case self.operacao
        when 1
            self.resultado = somar
        when 2
            self.resultado = subtrair
        when 3
            self.resultado = multiplicar
        when 4
            self.resultado = dividir
        when 5
            self.resultado = porcentagem
        end
    end

    def somar
        self.numero1 + self.numero2
    end

    def subtrair
        self.numero1 - self.numero2
    end

    def multiplicar
        self.numero1 * self.numero2
    end

    def dividir
        self.numero1 / self.numero2
    end

    def porcentagem
        (self.numero1 * self.numero2) / 100
    end 

end


