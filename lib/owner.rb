require "pry"
class Owner
  # code goes here\
  @@all = []
  attr_reader :name, :species
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  def say_species
    "I am a #{@species}."
    # binding.pry
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
    Cat.all.select {|cat_owner| cat_owner.owner == self}
  end
  def dogs
    Dog.all.select {|dog_owner| dog_owner.owner == self}
  end
  def buy_cat(name)
    # binding.pry
    new_cat = Cat.new(name, self)
    # binding.pry
  end
  def buy_dog(name)
    new_dog = Dog.new(name, self)
  end
  def walk_dogs
    # binding.pry
    self.dogs.each {|dogs| dogs.mood = "happy"}
    # binding.pry
  end
  def feed_cats
    # binding.pry
    self.cats.each {|cats| cats.mood = "happy"}
    # binding.pry
  end
  def sell_pets
    pets = self.cats + self.dogs
    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end