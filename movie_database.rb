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


  def display_movie_titles
    puts "Movies available:"
		@database.each_with_index do |movie, index| 
			puts "#{index + 1}. #{movie.title}"
		end
  end

  def get_movie_info(id)

    @database.each_with_index do |movie, index| 
      if id == index
        puts "#{movie.title}"
        puts "#{movie.director}"
        puts "#{movie.release_year}"
        puts "#{movie.genres}"
      end

    end
  end

  def user_added_movie(title, director, year, genre)
  
    add_to_storage(Movie.new(title, director, year, genre))
    
  end


  def add_json_to_database
    file_content = File.read('movies.json')
    json_data = JSON.parse(file_content)
    json_data.each do |movie|
      add_to_storage(Movie.new(movie['title'], movie['director'], movie['release_year'], movie['genres'].join(', ')))
    end
  end

end