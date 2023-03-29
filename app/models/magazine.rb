class Magazine
  attr_accessor :name, :category

  @@all = [] # an empty array where all magazine instances willl be stored
  
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all  
    @@all
  end


end
