require 'pry'
class Owner
  # code goes here
  attr_reader :name, :species, :mood
  
  @@all =[]
  def initialize(name)
    @name = name
    #@owner = owner
    @species = "human"
    @@all << self

  end

  def say_species
    @say_species = "I am a #{@species}."
  end
  
  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select { |cat_instance|
      cat_instance.owner == self }
  end

  def dogs
    Dog.all.select do |dog_instance|
      dog_instance.owner == self
    end
  end

  def buy_cat(buy)
    Cat.new(buy, self)
  end

  def buy_dog(buy)
    Dog.new(buy, self)
  end

  def walk_dogs
    Dog.all.select do |dog_instance|
      dog_instance.mood = "happy"
    end
  end

  def feed_cats
    Cat.all.select do |cat_instance|
      cat_instance.mood = "happy"
    end
  end

  def sell_pets
    pets = self.cats + self.dogs
    pets.each do |pets_instance|
      pets_instance.mood = "nervous"
      pets_instance.owner = nil
    end
  end

  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end
