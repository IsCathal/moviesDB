require 'json'
require_relative "movie"
require_relative "movie_database"
class MovieDataBase

  attr_reader :database

	def initialize
		@database = []
	end

	def add_to_storage(movie)
		@database << movie
	end

  def add_json_to_database
    file_content = File.read('movies.json')
    json_data = JSON.parse(file_content)
    json_data.each do |movie|
      add_to_storage(Movie.new(movie['title'], movie['director'], movie['release_year'], movie['genres'].join(', ')))
    end
  end

end