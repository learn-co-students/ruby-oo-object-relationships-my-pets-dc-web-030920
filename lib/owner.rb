require 'pry'

class Owner
  
  attr_reader :name, :species
  
  @@all_owners= []

  def initialize(name)
    @name = name
    @species = "human"
    @@all_owners << self

  end

  def say_species #instance method
    "I am a #{self.species}."
  end

  def self.all #class method
    @@all_owners
  end

  def self.count #class method
    @@all_owners.length
  end

  def self.reset_all #class method
    @@all_owners.clear #method .clear is used to remove all the elements in the array.
  end

  def cats 
    Cat.all.find_all{|cat| cat.owner == self} # in the array "Cat.all" find all cats that have an owner name equals to self.
  #binding.pry
  end

  def dogs
    Dog.all.find_all {|dog| dog.owner == self}
  end
  
  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name, self) #you have to make the new cat buyable
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name, self) #you have to make the new dog buyable
  end
  def walk_dogs
    dogs.mood = "happy"
  end
end