class Owner
  # code goes here
  attr_reader :name, :species
  attr_accessor :say_species
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
  end

  def say_species
    @say_species = "I am a #{@species}."
  end
  
  def self.all
    @@all << name
    return @@all
  end
end
