

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

  def dogs
    Dog.all.find_all{|dog| dog.owner == self} #returns an array of all instances
  end

  def pets
    cats + dogs
  end

  def self.count
    @@all_owners.length
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name,self)
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name, self) #you have to make the new dog buyable
  end
  
  def walk_dogs
    self.dogs.each { |dog| dog.mood = "happy" }
  end

  def feed_cats
    self.cats.each { |cat| cat.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |pet| 
      pet.mood = "nervous"
      pet.owner = nil
  end

  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  end
end