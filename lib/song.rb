require_relative './artist.rb'
require_relative './genre.rb'
require 'pry'
class Song

    @@all = []
    attr_reader :name, :artist, :genre

    def initialize(song_name_string, artist_instance, genre_instance)
        @name = song_name_string
        @artist = artist_instance
        @genre = genre_instance

        @@all << self
    end

    def self.all
        @@all
    end

end

