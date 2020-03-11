require 'pry'
class Owner
  # code goes here
  attr_reader :name,:species
  @@all = []
  @@owner_cat = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    return "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.find_all do |cat_instance| 
      cat_instance.owner == self 
    end
  end

  def dogs 
    Dog.all.find_all do |dog|
      dog.owner == self
    end
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def walk_dogs

    Dog.all.each do |dog_instance| 
      dog_instance.mood = "happy" 
    end  
  end

  def feed_cats

    Cat.all.each do |cat_instance| 
      cat_instance.mood = "happy" 
    end  
  end

  def sell_pets

    Cat.all.each do |cat_instance| 
      cat_instance.mood = "nervous"
      cat_instance.owner = nil 
    end
      Dog.all.each do |dog_instance| 
        dog_instance.mood = "nervous" 
        dog_instance.owner = nil
      end
  end

  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end