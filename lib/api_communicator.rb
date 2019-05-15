require 'rest-client'
require 'json'
require 'pry'

def get_character_movies_from_api(character_name)

  # make the web request
  response_string = RestClient.get('http://www.swapi.co/api/people/')
  response_hash = JSON.parse(response_string)
  
  # Find the matching character
  all_characters = response_hash["results"]
  found_character = all_characters.find do |character|
    character["name"].downcase == character_name
  end

  # map through the found characters films, get request on each url, return parsed film data
  found_character["films"].map do |film|
    film_data = RestClient.get(film)
    JSON.parse(film_data)
  end
  
end

def print_movies(films)
  # some iteration magic and puts out the movies in a nice list
  films.each.with_index do |film, i|
    puts "#{i + 1} - #{film["title"]}"
  end
end

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  print_movies(films)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
