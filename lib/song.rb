class Song

  attr_accessor :title, :artist

  @@all = []

  def initialize(title, artist=nil)
    @title = title
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @title
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end
