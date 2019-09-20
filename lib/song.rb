require 'pry'
class Song
    attr_accessor :name, :artist, :genre, :count 

     @@count = 0
     @@genres = []
     @@artists = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@count += 1
        @count = count 
        # binding.pry
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
        genre_count = {}
       @@genres.each do |count| 
        if genre_count[count]
             genre_count[count] +=1
        else genre_count[count] = 1 
        end
    end
    return genre_count  
end
def self.artist_count
    artist_count = {}
   @@artists.each do |count| 
    if artist_count[count]
         artist_count[count] +=1
    else artist_count[count] = 1 
    end
end
return artist_count  
end





end
