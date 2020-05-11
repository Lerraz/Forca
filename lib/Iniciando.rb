class Forca
	attr_accessor :cabeca
	attr_accessor :corpo
	attr_accessor :braco1
	attr_accessor :braco2
	attr_accessor :perna1
	attr_accessor :perna2

@braco1 = " "
@cabeca = "'"

def self.iniciando
	puts ""
	puts "              ╔=======╗"
	puts "              ║       |"
	puts "              ║       |"
	puts "              ║       #{@cabeca}"
	puts "              ║      #{@braco1}#{@corpo}#{@braco2}"
	puts "              ║      #{@perna1} #{@perna2}"
	puts "              ║"
	puts "              ║"
	puts "    ╔=========╬=========╗"
	puts ""
	puts "-- Digite 'DICA' ou 'REGRAS'--"
end

def self.erro (erro = 0)
	case erro
	when 0
		@braco1 = " "
		@cabeca = "'"
		@corpo = nil
		@braco2 = nil
		@perna1 = nil
		@perna2 = nil
	when 1
		@cabeca = "Ø"
	when 2
		@corpo = "║"
	when 3
		@braco1 = "/"
	when 4
		@braco2 = "\\"
	when 5
		@perna1 = "/"
	when 6
		@perna2 = "\\"
	end
end

end