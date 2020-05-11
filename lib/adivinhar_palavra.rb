require_relative 'sortear_palavra.rb'
require_relative 'revelar_letras.rb'
require_relative 'iniciando.rb'

class AdivinharPalavra < RevelarLetras
attr_accessor :palavra
attr_accessor :dica
attr_accessor :letras
attr_accessor :vetor
attr_accessor :erros
attr_accessor :vitoria

def initialize
	@palavra = SortearPalavra.sortear
	@dica = SortearPalavra.dica
	@letras = []
	@vetor = []
	@vetor = RevelarLetras.vetorize(@palavra)
	@erros = 0
	@vitoria = false
	Forca.erro(@erros)
end

def verificar(palavra = nil)
	erro = 0
	vitoria = false
	if palavra.size == 1
	 	@letras.push (palavra)
	 	erro = RevelarLetras.contem_erros(@vetor, @letras)
	 	@erros += erro.to_i
	 	Forca.erro(@erros)
	 	vitoria = RevelarLetras.revelar_letras(@vetor, @letras)
	 	@vitoria = vitoria
	 elsif (palavra.upcase + " " != @palavra.chomp) && (palavra.upcase != "DICA") && (palavra.upcase != "REGRAS")
	 	puts "        JOGO DA FORCA"
		puts ""
		puts ""
		puts ""
		print "hummm."
		sleep 1
		print "."
		sleep 1
		print "."
		sleep 2
		a = 1
		while a <= 6
		Forca.erro(a)
		a +=1
		end
		@erros = 6
		system ('clear')
	 else
		case palavra.upcase
			when @palavra.chop
				vitoria = true
				@vitoria = vitoria
			when "DICA"
				puts "        JOGO DA FORCA"
				puts ""
				puts ""
				puts ""
				puts "          A dica é: #{@dica}"
				print "          (Aperte ENTER..) "
				gets
				system ('clear')
				if @letras[0] == nil
					letras = []
					letras.push ("*")
				else
					letras = []
					letras = @letras
				end
				RevelarLetras.revelar_letras(@vetor, letras)
			when "REGRAS"
				puts "        JOGO DA FORCA"
				puts ""
				puts "        REGRAS"
				puts ""
				puts "-  O objetivo é descobrir a palavra, então digite uma letra e aperte 'ENTER'"
				puts "-  Você pode chutar até 6 letras erradas. É um jogo fácil..."
				puts "-  Se quiser arriscar, chute a palavra diretamente, mas se errar é 'GAME-OVER'"
				puts "-  Se chutar uma letra repetida, serei compreensivo e te avisarei."
				puts "-  A quarquer momento você pode digitar 'REGRAS' ou 'DICA'"
				puts ""
				print "(Aperte ENTER..) "
				gets
				system ('clear')
				if @letras[0] == nil
					letras = []
					letras.push ("*")
				else
					letras = []
					letras = @letras
				end
				RevelarLetras.revelar_letras(@vetor, letras)
		end
	end
end
end