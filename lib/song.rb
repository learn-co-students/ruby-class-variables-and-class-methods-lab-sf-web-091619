require 'pry'
class Song

    attr_reader :name, :artist, :genre
    attr_accessor :count
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        
        @@count += 1
        @@artists << artist
        @@genres << genre
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
        hash = {}
        @@genres.each { |value|
            if hash[value] 
                hash[value] += 1
            else
                hash[value] = 1
            end
        }
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each { |value|
            if hash[value] 
                hash[value] += 1
            else
                hash[value] = 1
            end
        }
        hash
    end
end