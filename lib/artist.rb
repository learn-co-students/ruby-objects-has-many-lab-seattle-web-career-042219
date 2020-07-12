class Artist
  attr_accessor :name, :genre

  @@songs = 0

  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song)
    @@songs += 1
    @songs << song
    song.artist = self
    Song.all << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @@songs += 1
    song.artist = self
    @songs << song
    Song.all << song

  end

  def songs
    @songs
  end

  def self.song_count
    @@songs
  end

end
