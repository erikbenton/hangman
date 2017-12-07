class Game

	def initialize
		
	end

	def setup
		words = self.load_words("../5desk.txt")
		@word = get_word(@words)
		@word_length = word.length
		@guesses = []
		@number_of_guesses = @guesses.length
	end

	def load_words(file_location)
		words = []
		if File.exist? file_location
			File.readlines(file_location).each do |word|
				if word.length > 4 && word.length < 13
					words.push(word)
				end
			end
		end
		words		
	end

	def get_word(words)
		words[Random.rand(words.length)].downcase
	end

	def make_guess
		
		loop do
			puts "Please enter in a letter for your guess"
			guess = gets.chomp.downcase
			
			if guess.to_s.length > 1
				puts "Please enter a single letter"
			elsif !@guesses.includes? guess
				@guesses.push(guess)
				@number_of_guesses += 1
				break
			else
				puts "You have already made that guess"
			end
	end

	def show_results
		
	end

	def reset

	end


end