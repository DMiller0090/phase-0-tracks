class GuessGame
	attr_reader :guess_word, :guesses_left, :game_won
	def initialize(secret_word)
		@secret_word = secret_word.downcase.chars
		@guess_word = []
		num_of_letters = 0
		@secret_word.each do |char|
			if (char.match(/^[[A-z]]$/) )
				@guess_word << '_'
				num_of_letters += 1
			else
				@guess_word << char
			end
		end
		@guesses_left = (num_of_letters * 1.5).round
		@game_won = false
	end
	
	def print_guess_word
		@guess_word.each do |char|
			print("#{char} ")
		end
		print("\n")
	end
	
	def guess_letter(guess)
		guess.downcase!
		already_guessed = false
		index = 0
		@secret_word.each do |char|
			if(char == guess)
				if(char == @guess_word[index])
					already_guessed = true
				else
					@guess_word[index] = char
				end
			end
			index += 1
		end
		if(!already_guessed)
			@guesses_left -= 1
		end
		if(@guess_word == @secret_word)
			@game_won = true
		end
	end
end


#Driver code
print("Choose a secret word/phrase: ")
secret_word = gets.chomp
game = GuessGame.new(secret_word)

while(game.guesses_left > 0)
	puts ("#{game.guesses_left} guess(es) left...")
	print("Current status: ")
	game.print_guess_word
	print("Guess a letter: ")
	guess = gets.chomp
	if (guess.length > 1)
		puts "Invalid input, please only enter 1 letter"
	else
		game.guess_letter(guess)
	end
	print("\n")
	break if game.game_won
end

if(game.game_won)
	puts "Congratulations you won!\nYou guessed the secret word/phrase: #{game.guess_word.join}"
else
	puts "You lose, try again next time!"
end