require 'pry' 

class Owner

  attr_reader :name, :species 

  @@all = []
  @@dogs = []
  @@cats = []

 
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
    # binding.pry
  end 

  def self.reset_all 
    @@all = [] 
  end 
  
  def cats 
      Cat.all.select{|cats| cats.owner == self }
  end 

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def buy_cat(name)

    Cat.new(name, self)
    @@cats << self 
   
  end

  def buy_dog(name)

    dog = Dog.new(name, self)
    @@dogs << self

  end 

  def walk_dogs 
    
    self.dogs.select {|dog| dog.mood = "happy"}

  end 
  
  def feed_cats
    self.cats.select {|cat| cat.mood = "happy"}
  end 

  def sell_pets
    

    self.cats.select { |cat| 
      cat.mood = "nervous" 
      cat.owner = nil 
    } 
    self.dogs.select {|dog| 
        dog.mood = "nervous" 
        dog.owner = nil 
    }
    

  end


  def self.cats 
    @@cats 
  end 

  def self.dogs
    @@dogs 
  end 


  def list_pets 
    
   "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  #  binding.pry
   
  end


end