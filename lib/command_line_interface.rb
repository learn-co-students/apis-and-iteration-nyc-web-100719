def welcome
  # puts out a welcome message here!
end

def get_character_from_user
  puts "please enter a character"
  # use gets to capture the user's input. This method should return that input, downcased.
  character = gets.chomp
  get_character_movies_from_api(character)
end
