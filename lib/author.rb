class Author
    @@posts = []

    attr_reader :name
    def initialize(name = nil)
        @name = name
        
    end
    
    def add_post(post)
        @@posts << post
        post.author = self
    end

    def posts
        @@posts
    end

    def add_post_by_title(post)
        post = Post.new(post)
        @@posts << post
        post.author = self
    end

    def self.post_count
        @@posts.count
    end
end

