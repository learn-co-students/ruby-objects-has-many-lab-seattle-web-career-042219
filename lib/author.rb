require 'pry'

class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
  #  binding.pry
    @posts << post
#    binding.pry
    post.author = self
    # => = author.name
    #takes in an argument of a post obj and associates that post with
    #the author by telling the post that it belongs to that author
  #  binding.pry
  end

  def add_post_by_title(post_name_string)
    #takes in an argument of a post title, creates a new post with it and associates the
    #post and author
      post_obj = Post.new(post_name_string)
      self.add_post(post_obj)
    #  binding.pry

  end

  def self.post_count
    Post.all.count
  end

end
