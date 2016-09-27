# Implement a method substrings that takes a word as the first argument and then an array of valid substrings (your 
# dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in 
# the original string and how many times it was found.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "Parašyk ką nors!"
words = gets.chomp.downcase.split(" ")
word_hash = {}
# words = "Howdy partner, sit down! How's it going?"

dictionary.each do |i|
	nr = 0
	words.each do |word|
		if word[i] != nil
			nr += word.scan(/#{i}/).count
			word_hash[i] = nr
		end
	end
end

puts word_hash
