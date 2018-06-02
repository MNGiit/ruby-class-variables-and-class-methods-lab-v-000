class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@artists.push(artist) if !@@artists.include?(artist)
    @@genres.push(genre) if !@@genres.include?(genre)
  end

  def self.count
    @@count
  end
  
  def self.artists
    @@artists
  end
end