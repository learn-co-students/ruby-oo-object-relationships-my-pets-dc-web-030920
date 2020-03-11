require "pry"

class Cat
  # code goes here
   attr_accessor :owner, :mood
   attr_reader :name
   @@all = []
  def initialize(name, owner) #name is string owner is an instance of the class Owner
    
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self

  end

  def self.all
    @@all
  end
  
end