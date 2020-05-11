require_relative 'lib/adivinhar_palavra.rb'
require_relative 'lib/iniciando.rb'
require_relative 'lib/revelar_letras.rb'

jogar = true

while jogar == true

jogo = nil
jogo = AdivinharPalavra.new

palavra = nil
letras = []
letras.push ("*")
vetor = jogo.vetor	

system ('clear')
RevelarLetras.revelar_letras(vetor, letras)

while (jogo.erros < 6) && (jogo.vitoria == false)
	Forca.iniciando
	puts ""
	puts "Tentativas: #{jogo.letras}"
	puts ""
	puts "Você pode digitar uma letra, ou arriscar a palavra diretamente"
	print "R: "
	palavra = gets.chomp
	palavra = palavra.upcase
	system ('clear')
	jogo.verificar(palavra)
end

	system ('clear')
	puts "        JOGO DA FORCA"
	puts ""
	puts ""
	puts ""
	Forca.iniciando
	sleep 1
	if jogo.erros == 6
		puts "           VOCE PERDEU"
	else
		puts "        VOCE VENCEU !"
	end
	puts ""
	puts "A Palavra era ' #{jogo.palavra}'"
	puts ""
	puts "Letras que você digitou:"
	puts "#{jogo.letras}"
	puts ""
	print "(Aperte ENTER..) "
	gets

	a = 0
	resp = nil

	while a <=0
		system ('clear')
		puts "        JOGO DA FORCA"
		puts ""
		puts ""
		puts ""
		puts ""
		puts "          Deseja joga novamente?"
		print "          Digite SIM ou NÃO: "
		resp = gets.chomp

		if resp.upcase == "SIM"
			jogar = true
			puts ""
			puts "          VAMOS LÁ!!"
			sleep 2
			a = 1
		elsif (resp.upcase == "NÃO") || (resp.upcase == "NAO")
			jogar = false
			puts ""
			puts "          Bye Bye!!"
			sleep 2
			system ('clear')
			a = 1
		else
			system ('clear')
			puts "\n\n\n\n          Digite apenas 'SIM' ou 'NÃO'"
			sleep 2
			a = 0
			system ('clear')
		end
	end
end