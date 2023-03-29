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



end
