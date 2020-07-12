class Post
	attr_accessor :title, :author
#   #title
#     has a title (FAILED - 8)
#   #author
#     belongs to an author (FAILED - 9)


#     is a class variable set to an array (
	@@all = [] 

	def initialize(title)
		@title = title#     is initialized with an argument of a title 
		@@all << self#     pushes new instances into a class variable called @@all upon initialization 
	end

#     is a class method that returns an array of all post instances that have been created (FAILED - 7)
	def self.all 
		@@all
	end


#     knows the name of its author (FAILED - 10)
#     returns nil if the post does not have an author (FAILED - 11)
	def author_name
		if @author
			@author.name
		else
			nil
		end
	end


end
