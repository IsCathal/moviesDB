class Movie
  attr_accessor :title, :director, :release_year, :genres

  def initialize(title, director,release_year,genres)
    @title = title
    @director = director
    @release_year = release_year
    @genres = genres
    @favorited = false

  end

end
