class RevelarLetras 

def self.vetorize(palavra = nil)

	a = 0
	v = []

	while a <= (palavra.size - 1)
		v.push (palavra.chars[a])
		a += 1
	end
	return v
end

def self.contem_erros(vetor = nil, letra = nil)
	vet = vetor
	let = letra
	a = 0
	b = 0
	c = 0
	d = 0
	
	while a <= (let.size - 2)
		if let[let.size - 1] == let[a]
			c = 1
		else
		end
		a += 1
	end

	if c == 0
		while b <= (vet.size - 2)
			if let[let.size - 1] == vet[b]
				d = 0
			else
				d += 1
			end
		b += 1
		end
	else
		system ('clear')
		puts "\n\n\n\n          Letra Repetida!!!"
		puts ""
		print "          (Aperte ENTER..) "
		gets
		system ('clear')
	end

	if d == (vet.size - 1)
		system ('clear')
		puts "\n\n\n\n          Não tem essa letra na palavra..."
		puts ""
		print "          (Aperte ENTER..) "
		gets
		system ('clear')
		return 1
	else
	end
end

def self.revelar_letras(vetor = nil, letra = nil)
	vet = vetor
	let = letra
	a = 0
	b = 0
	c = 0
	d = 0

	puts "        JOGO DA FORCA"
	puts ""
	puts ""
	print "PALAVRA:   "

	while a <= (vet.size - 2)
		while b <= (let.size - 1)
			if let[b] == vet[a]
				print "#{let[b]} "
			    b = let.size
			    c = 0
			    d += 1
			elsif vet[a] == " "
				print "   "
				b = let.size
				c = 0
				d += 1
			else
				b += 1
				c = 1
			end
		end

		if c == 1
			print "_ "
			d = 0
		else
		end

		a += 1
		b = 0
		c = 0

	end
	puts ""

	if d == (vet.size - 1)
		return true
	else
		return false
	end
end

end