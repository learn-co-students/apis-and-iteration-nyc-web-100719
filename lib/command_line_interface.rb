def welcome
  # puts out a welcome message here!
  puts "HERE IS A WELCOME MESSAGE"

end

def get_character_from_user
  puts "please enter a character name"
  character = gets.chomp.downcase
  character
  # use gets to capture the user's input. This method should return that input, downcased.
end
