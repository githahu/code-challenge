class Article
    attr_reader :author, :magazine, :title # objects not changeable since are only accessed and not writable
    
    @@all = []
    # attr_accessor :title, :magazine

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end
    def self.all 
        @@all
    end

    #object relationship methods
    def author 
        @author
    end

    def magazine 
        @magazine
    end

    def title 
        @title
    end

    def author_name 
        self.author.name
    end

    def magazine_name
        self.magazine.name 
    end

end
