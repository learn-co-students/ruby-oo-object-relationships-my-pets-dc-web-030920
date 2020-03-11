require 'pry'

class Owner
  attr_reader :name, :species

  def initialize (name)
    @name = name
    @species = "human"
    
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
   binding.pry
  end


end