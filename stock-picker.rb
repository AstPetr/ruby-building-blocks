# Takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best
# day to buy and the best day to sell. Days start at 0.
# You need to buy before you can sell

# Surenka masyva
i = 0
kainos = []
while i < 12 do
	puts "Parasykite sios dienos akciju kaina "
	kainos[i] = gets.to_i
	i +=1
end

# kainos = [12, 13, 5, 6, 51, 3, 4, 14, 3]
# Geriausia diena pirkti
parduok, pirk_diena, parduok_diena = 0, 0, 0
pirk = kainos[0]
kainos.each_with_index do |kaina, ind|
	if kaina < pirk
		pirk_diena = ind
		pirk = kaina
	end
end
# Geriausia diena parduoti
kainos[pirk_diena..-1].each_with_index do |kaina, ind|
	if kaina > parduok
		parduok_diena = ind
		parduok = kaina
	end
end

puts "Geriausia diena pirkti yra #{pirk_diena}, kai kaina yra #{pirk}"
puts "Geriausia diena parduti yra #{pirk_diena + parduok_diena}, kai kaina yra #{parduok}"

