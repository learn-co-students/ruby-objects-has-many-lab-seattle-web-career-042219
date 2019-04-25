class Artist
    @@songs = []

    attr_reader :name
    def initialize(name = nil)
        @name = name
        
    end
    
    def add_song(song)
        @@songs << song
        song.artist = self
    end

    def songs
        @@songs
    end

    def add_song_by_name(song)
        song = Song.new(song)
        @@songs << song
        song.artist = self
    end

    def self.song_count
        @@songs.count
    end
end

