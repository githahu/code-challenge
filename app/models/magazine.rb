class Magazine
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
