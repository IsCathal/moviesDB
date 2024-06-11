require 'json'
require_relative "movie"
require_relative "movie_database"

movieDataBase = MovieDataBase.new
file_content = File.read('movies.json')


json_data = JSON.parse(file_content)

json_data.each do |movie|
  movieDataBase.add_to_storage(Movie.new(movie['title'], movie['director'], movie['release_year'], movie['genres'].join(', ')))
end

p movieDataBase