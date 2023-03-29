# Please copy/paste all three classes into this file to submit your solution!
# Article class
class Article
    attr_reader :author, :magazine, :title # objects not changeable since are only accessed and not writable
    
    @@all = []
     attr_accessor :title, :magazine

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

    def author_name # return author for an article
        self.author.name
    end

    def magazine_name # return magazine where an article is found
        self.magazine.name 
    end

end



# Author class
class Author
    attr_reader :name #change to attr_reader to disable changes after initialization
  
    def initialize(name)
      @name = name
    
    end
  
    # to return an array of article instances an author has written
    def articles
      Articles.all.select { |article| article.author == self}
    end
    # to return a unique array of mag instances for which an author has contributed to
  
    def magazines
      articles.collect { |article| article.magazine }.uniq
    end
  
    def add_article(magazine, title)
      Article.new(self , magazine , title)
    end
    def topic_areas
      magazines.collect { |magazine| magazine.category }.uniq
    end
  
  end



  #Magazine class


  lass Magazine
  attr_accessor :name, :category

  @@all = [] # an empty array where all magazine instances willl be stored
  
  def initialize(name, category) # initialize name and category
    @name = name
    @category = category
    @@all << self
  end

  def self.all  
    @@all
  end

  def articles 
    Article.all.select { |article| article.magazine == self }
  end
  def authors 
    articles.collect { |article| article.auhtor }.uniq 
  end

  def article_titles #all titles if articles in a magazine
    articles.collect { |article| article.title} #return array of titles of all articles for a specific magazine
  end

  def auhtor_names 
    auhtors.collect { |author| author.name}
  end

  
 def contributors #auhtor istances who have contributed in a magazine
    Article.all.filter { |article| article.magazine == self }.map { |article|marticle.author.name}.uniq
  end


 
  def self.find_by_name(name)
    self.all.find { |magazine| magazine.name == name} #return first mag obj that matches the mag name given
  end


  def self.find_by_category(category) # return category of a magazine
    self.all.select { |magazine| magazine.category == category }

  end

  def self.most_popular
    self.all.max_by { |magazine| magazine.contributor_names.count }

  end

  def contributor_count
    contributor_names.count
  end

 

  def contributing_authors # auhtors who have written more than 2 articles for each magazine
    popular_authors = Article.all.filter { |article| article.magazine.name == @name }.map {
       |article|
       article.author.name
      }.tally.each { |key, value| value > 2 }
      popular_authors
  end


end