class Author
  attr_accessor :name, :title
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end

  def add_post(post)
    post.author = self
    @posts<< post
    @@post_count += 1
  end

  def add_post_by_title(post_title)
    newpost = Post.new(post_title)
    @posts << newpost
    newpost.author = self
    @@post_count += 1
  end

end
