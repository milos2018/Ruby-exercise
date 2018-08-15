class Animal
  attr_accessor :name, :sound
  @@number_of_animals = 0
  @@all_animals = []

  def self.number_of_animals
    @@number_of_animals
  end

  def self.number_of_animals= (number_of_animals)
    @@number_of_animals = number_of_animals
  end

  def self.all_animals
    @@all_animals
  end

  def self.all_animals= (animals)
    @@all_animals = animals
  end

  def initialize (name, sound = "")
    @name = name
    @@number_of_animals += 1
    @@all_animals << self
  end

end

class Cow < Animal

end

zika = Animal.new("Zika", "Oj")
puts zika.inspect
puts Animal.all_animals.inspect
puts Animal.number_of_animals

milka = Cow.new("Milka")
puts milka.inspect
puts Cow.all_animals.inspect
puts Cow.number_of_animals
puts Animal.all_animals.inspect
puts Animal.number_of_animals
