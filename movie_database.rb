require_relative "movie"

class MovieDataBase

  attr_reader :database

	def initialize
		@database = []
	end

	def add_to_storage(movie)
		@database << movie
	end

end