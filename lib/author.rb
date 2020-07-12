class Author
	attr_accessor :name#   #name  has an attr_accessor for name

	@@all_posts = [] #all posts associated with the author

	def initialize(name)#     is initialized with a name
		@name = name
		@posts = []
	end

	def posts#     has many posts 
		@posts
	end

	def add_post(post) # takes in an argument of a post 
		@posts << post
		post.author = self #associates that post with the author 
		@@all_posts << post
	end
#    and by telling the post that it belongs to that author (FAILED - 2)

#    takes in an argument of a post title, creates a new post with it and associates the post and author
 #creates a new post with it and associates the post and author (FAILED - 3)
	def add_post_by_title(title)#     takes in an argument of a post name,
		post = Post.new(title)
		@posts << post
		@@all_posts << post
		post.author = self
	end

	#returns the total number of posts associated to all existing authors
	def self.post_count 
		@@all_posts.length
	end
end
