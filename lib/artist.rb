class Artist
	attr_accessor :name #argument of a song name

	@@all_songs = [] #all songs associated to all existing artists

	def initialize(name)#initialized with a name
		@name = name
		@songs = []
	end

	def songs # has many songs
		@songs
	end

	def add_song(song)#    takes in an argument of a song 
    	@songs << song
    	song.artist = self #associates that song with the artist by telling the song that it belongs to that artist 
        @@all_songs << song #new song added to total song count
  	end

	def add_song_by_name(name)  #    takes in an argument of a song name, 
	    song = Song.new(name)  #creates a new song with it 
	    @songs << song #puts song into initialize array
	    @@all_songs << song #puts song into class array
	    song.artist = self  #associates the song and artist
	end

 	#is a class method that returns the total number of songs associated to all existing artists (FAILED - 1)
 	def self.song_count
 		@@all_songs.length
 	end
end
