require 'pry' 

class Owner

  attr_reader :name, :species 

  @@all = []

 
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self 
  end 

  def say_species 
    #binding.pry 
    "I am a #{self.species}."
  end
  
  def self.all 
    @@all 
  end 

  def self.count 
    @@all.length 
  end 

  def self.reset_all 
    @@all = [] 
  end 
  
  def cats 
      Cat.all.select{|cats| cats.owner == self }
  end 



  # def tweets
  #   Tweet.all.select{|tweet_instance| tweet_instance.user == self }
  # end




end