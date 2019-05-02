
require 'pry'

class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    #binding.pry
    @songs << song
    song.artist = self
    #binding.pry
  end

  def add_song_by_name(song_name_string)
    song_obj = Song.new(song_name_string)
    self.add_song(song_obj)
  end

  def self.song_count
    Song.all.count
  end

end
