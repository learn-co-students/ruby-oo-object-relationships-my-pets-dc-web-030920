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

  def self.counownt #class method
    @@all_owners.length
  end

  def self.reset_all #class method
    @@all_owners.clear #method .clear is used to remove all the elements in the array.
  end

  def cats 
    Cat.all.find_all{|cat| cat.owner == self}
  #binding.pry
  end
end