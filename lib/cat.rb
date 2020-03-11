class Cat
  # code goes here
  attr_reader :name
  attr_accessor :owner, :mood

  @@all_cats = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all_cats << self #each instance of the class Cat will shovel inside the @@all_cats array
  end

  def self.all 
    return @@all_cats
  end


end
