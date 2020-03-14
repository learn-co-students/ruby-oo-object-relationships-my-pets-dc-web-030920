require 'pry'
class Owner
  attr_reader :name, :species 
  @@all = []
  def initialize (name)
    @name = name
    @species = 'human'
    @@all << self
  end

  def say_species
    return "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def cats
#return collection of all cats that belong to owner
Cat.all.select{|c| c.owner == self}
  end

  def dogs
    Dog.all.select{|d| d.owner == self}
  end

  def buy_cat(name)
    Cat.new(name,self)
  end

  def buy_dog(name)
    Dog.new(name,self)
  end

  def walk_dogs
    Dog.all.select{|d|d.mood="happy"}
  end

  def feed_cats
    Cat.all.select{|c|c.mood="happy"}
  end

  def sell_pets
    pets = Cat.all + Dog.all 
  
    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil 
    end
  end

  def list_pets
    "I have #{Dog.all.select{|d| d.owner == self}.length} dog(s), and #{Cat.all.select{|c| c.owner == self}.length } cat(s)."
  end


 
end