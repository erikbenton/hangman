file_location = "../5desk.txt"
dictionary = []
if File.exist? file_location
	File.readlines(file_location).each do |word|
		if word.length > 4 && word.length < 13
			dictionary.push(word.to_s)
			puts word
		end
	end
end
puts dictionary[Random.rand(dictionary.length)]