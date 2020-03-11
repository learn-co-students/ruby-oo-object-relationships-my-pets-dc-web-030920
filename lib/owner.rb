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


end