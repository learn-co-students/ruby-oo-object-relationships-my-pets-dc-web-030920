require 'pry'

class Owner
  @@all = []

  attr_reader :name, :species

  def initialize (name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all 
    return @@all
  end 

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    Cat.all.select{|cat_owner_instance| cat_owner_instance.owner == self}
  end

  def dogs
    Dog.all.select{|dog_owner_instance| dog_owner_instance.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self) 
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    Dog.mood = "happy"
  end

end