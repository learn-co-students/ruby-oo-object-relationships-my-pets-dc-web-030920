class Dog

  @@all = []

  attr_accessor :owner, :mood
  attr_reader :name

  def initialize (name, owner)
    @mood = "nervous"
    @name = name
    @owner = owner
    @@all << self
  end

  def self.all
    return @@all
  end

  # code goes here
end