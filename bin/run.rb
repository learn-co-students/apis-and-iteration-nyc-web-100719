# welcome
require_relative '../lib/api_communicator.rb'
require_relative '../lib/command_line_interface.rb'

# character = get_character_from_user
# show_character_movies(character)

StarWarsCLI.new.run
