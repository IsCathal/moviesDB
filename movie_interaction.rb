require 'json'
require_relative "movie"
require_relative "movie_database"


movieDataBase = MovieDataBase.new
movieDataBase.add_json_to_database
p movieDataBase.database

puts "Movie API Interaction 
1. View all movies 
2. View movie information 
3. Add movie 
4. Exit 
Choose an option: "
    
user_input_number = gets.to_i
  
  while user_input_number != 4
    case user_input_number
    when 1
      movieDataBase.display_movie_titles
      puts
    when 2

    when 3

    else
      puts  "Error, Please enter Number between 1 and 7"
      puts
    end
    puts "Movie API Interaction  
    1. View all movies 
    2. View movie information 
    3. Add movie 
    4. Exit
  Choose an option:"
  user_input_number = gets.to_i
  end

puts "Goodbye!"
