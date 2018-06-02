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
    @@artists.push(artist) # or use @@artists << artist
    @@genres.push(genre)  # or use @@genres << genre
  end

  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      genre_hash[genre]? genre_hash[genre] +=1 : genre_hash[genre] = 1
    end
    genre_hash
  end
end