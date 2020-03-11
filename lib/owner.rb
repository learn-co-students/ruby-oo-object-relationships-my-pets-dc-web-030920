require 'pry'
class Owner
  # code goes here
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    return @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all 
    @@all.clear
  end 

  def cats
    Cat.all.find_all{|c|c.owner==self}
  end

  def dogs
    Dog.all.find_all{|d|d.owner == self}
  end

  def buy_cat(name)
    name = Cat.new(name, self)
  end

  def buy_dog(name)
    name = Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each {|d| d.mood="happy"}
  end

  def feed_cats
    self.cats.each {|c|c.mood="happy"}
  end

  # def sell_pets
  #   self.cats.each do|c|c.mood="nervous" 
  #                       c.owner=nil end
  #   self.dogs.each do|d|d.mood="nervous" 
  #                       d.owner=nil end
                  
  # end

  def sell_pets
    pets = self.dogs + self.cats

    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end

  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end

