require 'pry'

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

  def self.count #class method
    @@all_owners.length
    #self.all.length
    #Owner.all.length
  end

  def self.reset_all #class method
    @@all_owners.clear #method .clear is used to remove all the elements in the array.
    # @@all_owners = []
    #self.all.clear   #self is also @@all_owners
    #Owner.all.clear
  end

  def cats 
  # Cat.all.select do |cat_instance|
  #   cat_instance == self
  # end
    Cat.all.find_all{|cat| cat.owner == self} # in the array "Cat.all" find all cats that have an owner name equals to self.
  end

  def dogs
    Dog.all.find_all {|dog| dog.owner == self}
  end
  
  def buy_cat(cat_name)
    Cat.new(cat_name, self) #you have to make the new cat buyable
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self) #you have to make the new dog buyable
  end
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
   end

   def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
   end

    def sell_pets
      # self.cats.each do |cat| 
      #   cat.mood = 'nervous'
      #   cat.owner =nil
      # end

      # self.dogs.each do |dog|
      #   dog.mood = 'nervous'
      #   dog.owner = nil
      # end

      pets = self.cats + self.dogs

      pets.each do |pet|
        pet.mood = 'nervous'
        pet.owner = nil
      end
    end

    def list_pets
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end

end