class Artist
	attr_accessor :name, :songs

	def initialize(name)
		@name = name
		@songs = []
	end

	@@songs_count = 0

	def add_song(song)
		@songs << song
		song.artist = self
		@@songs_count +=1
	end

	def add_song_by_name(song_name)
		song = Song.new(song_name)
		song.artist = self
		@songs << song
		@@songs_count +=1
	end

	def self.song_count
		@@songs_count
	end
end

