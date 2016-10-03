# Cezario šifras
# Pakeičiamos raidės nurodytu poslinkiu  

def caesar_cipher (words, shift)
	i = 0
	while i<words.length do
		if words[i].match(/\w/) != nil
			ind = words[i].ord+shift
			if (words[i] == words[i].upcase && ind > 90) || (words[i] == words[i].downcase && ind > 122)
				words[i] = (ind-26).chr
			else
				words[i] = ind.chr
			end
		end
	i+= 1
	end
end

puts "Parašyk ką nors!"
words = gets.chomp
puts "Poslinkis:"
shift = gets.chomp.to_i
caesar_cipher(words, shift)
puts words
