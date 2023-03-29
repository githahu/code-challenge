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
