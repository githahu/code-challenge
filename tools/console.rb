require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new(name: "John")
author2 = Author.new(name: "Bruce")
author3 = Author.new(name: "Michael")
author4 = Author.new(name: "Charles")
author5 = Author.new(name: "Kimahi")
author6 = Author.new(name: "Obiero")
author7 = Author.new(name: "Musyoka")



mgz1 = Magazine.new(name: "Science", category: "Solar System")
mgz2 = Magazine.new(name: "Medicine", category: "Drugs")
mgz3 = Magazine.new(name: "Health", category: "Health")
mgz4 = Magazine.new(name: "Health Digest", category: "Health")
mgz5 = Magazine.new(name: "Machine Learning", category: "Algorithms")
mgz6 = Magazine.new(name: "Weather", category: "Environment")
mgz7 = Magazine.new(name: "Environment", category: "Pollution")
mgz8 = Magazine.new(name: "Money", category: "Economics")

mgz9 = Magazine.new(name: "Religion", category: "Religion")

art1 = Article.new(author: author1, magazine: mgz1, title: "The rotating earth")
art2 = Article.new(author: author3, magazine: mgz1, title: "The solar system")
art3 = Article.new(author: author4, magazine: mgz1, title: "The Moving stars")
art4 = Article.new(author: author7, magazine: mgz1, title: "The new planets")
art5 = Article.new(author: author7, magazine: mgz3, title: "The Vegetarian")
art6 = Article.new(author: author3, magazine: mgz7, title: "Humidity levels")
art7 = Article.new(author: author2, magazine: mgz2, title: "Metformin and Insulin")
art8 = Article.new(author: author4, magazine: mgz4, title: "Avoiding the Doctor")
art9 = Article.new(author: author5, magazine: mgz4, title: "Before it is too late")
art10 = Article.new(author: author2, magazine: mgz8, title: "Getting Poor")












### DO NOT REMOVE THIS

binding.pry

0
