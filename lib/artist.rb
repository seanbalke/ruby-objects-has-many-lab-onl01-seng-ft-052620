require 'pry'
class Artist
#needs method that returns a collection of all songs belonging to artist
#add_song_by_name should take an argument of a song title & use that to create a new song and then associate the objects - this will not return any values
#.song_count will return the total number of songs that have been created

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all
    end

    def add_song(song)
        song.artist = self
        # binding.pry
        #takes song arguement & associates that song with the artist by telling the song that it belongs to that artist ie spice_girls.add_song(wannabe) wannabe.artist => "Spice Girls"
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
        #takes arguement of song title, CREATES NEW SONG, & associates the song & artist
    end

    def self.song_count
        Song.all.count
       #returns total number of songs associated to all existing artists 
    end



end