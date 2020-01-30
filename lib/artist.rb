
require_relative './song.rb'

class Artist

    @@all = []

    attr_reader :name

    def initialize(artist_name_string)
        @name = artist_name_string
        @@all << self
        

        @@all << self
    end

    def self.all
        @@all
    end

    #! Self class methods above
    #//                 
    #! Relationships methods bellow
    def new_song(song_name_string, genre_instance )
        Song.new(song_name_string, self, genre_instance)
    end

    def songs
        
        Song.all.select{|song| song.artist == self}
        
    end

    def genres
        Song.all.select{|song| song.artist == self}.map{|song| song.genre}
    end

end