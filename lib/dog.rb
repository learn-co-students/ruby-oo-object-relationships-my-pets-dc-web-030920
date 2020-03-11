class Dog
  # code goes here
  attr_accessor :owner,:mood
  attr_reader :name
  @@dog = []
  def initialize(name,owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@dog << self
  end

  def self.all
    @@dog
  end

end