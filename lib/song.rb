
class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres =[]
@@artists = []

  def initialize (name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << self.genre
  @@artists << self.artist
  end

  def self.count
  @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
  genre_count ={}
    @@genres.each do |element|
      if genre_count[element]
         genre_count[element] += 1
      else genre_count[element] = 1
      end
    end
    return genre_count
  end

  def self.artist_count
  artist_count ={}
    @@artists.each do |element|
      if artist_count[element]
         artist_count[element] += 1
      else artist_count[element] = 1
      end
    end
    return artist_count
  end

end
