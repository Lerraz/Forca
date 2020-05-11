class SortearPalavra
	attr_reader :dica

def self.sortear
	v = []

	File.open(File.expand_path('../../palavras.txt', __FILE__), 'r') do |arq|
	while line =arq.gets
		v.push(line)
	end
	end

	SortearPalavra.convert(v.sample)
end

def self.convert(v = [])
	v = v.split('@')
	palavra = v[0]
	@dica = v[1]
	return palavra
end

def self.dica
	return @dica
end

end