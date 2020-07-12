class Song
	attr_accessor :name, :artist

	@@all = [] #all song instances that have been created

	def initialize(name) #initialized with an argument of a name
		@name = name
		@@all << self #pushes new instances into a class variable called @@all upon initialization
	end

	# is a class method that returns an array of all song instances that have been created
	def self.all
		@@all
	end

	def artist_name
		if @artist
			@artist.name# knows the name of its artist
		else
			nil# returns nil if the song does not have an artist 
		end

	end
end
