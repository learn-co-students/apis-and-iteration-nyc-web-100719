# def welcome
#   puts "Welcome to the Star Wars Query Machine!!"
# end

# def get_character_from_user
#   puts "please enter a character"
#   # use gets to capture the user's input. This method should return that input, downcased.
#   gets.chomp
# end

class StarWarsCLI

  def initialize
    @api_wrapper = StarWarsApiWrapper.new
  end

  def run
    welcome
    character = get_character_from_user
    films_hash = get_character_movies_from_api(character)
    display_character_movies(films_hash)
  end

  def welcome
    puts "Welcome to the Star Wars Query Machine!!"
  end

  def get_character_from_user
    puts "please enter a character"
    gets.chomp
  end

  def get_character_movies_from_api(character)
    @api_wrapper.get_character_movies(character)
  end

  def display_character_movies(films_hash)
    films_hash.each.with_index(1) do |data, index|
      puts "#{index}. " + data['title']
    end
  end
end