class Cat

  attr_reader :name
  attr_accessor :owner, :mood
  @@all = []

  def initialize(name, owner)
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


