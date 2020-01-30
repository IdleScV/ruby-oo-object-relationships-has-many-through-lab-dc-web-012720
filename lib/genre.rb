require_relative './song.rb'

class Genre 

    @@all = []
    attr_reader :name

    def initialize(genre_name_string)
        @name = genre_name_string
        @@all << self
    end

    def self.all
        @@all
    end

    #! Self class methods above
    #//                 
    #! Relationships methods bellow

    def songs
        Song.all.select{|song| song.genre == self}
    end

    def artists
        
        Song.all.select{|song| song.genre == self}.map{|song| song.artist}
    end
end