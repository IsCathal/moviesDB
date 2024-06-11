require_relative '../movie.rb'


describe Movie do
  it 'creates a movie with a title, director, release year and genres' do
    inception = Movie.new("Inception", "Christopher Nolan", 2010 , ["Sci-Fi", "Action", "Thriller"])
    expect(inception.title).to eq("Inception")
    expect(inception.director).to eq("Christopher Nolan")
    expect(inception.release_year).to eq(2010)
    expect(inception.genres).to eq(["Sci-Fi", "Action", "Thriller"])
  end


end