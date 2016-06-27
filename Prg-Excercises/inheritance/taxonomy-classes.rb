# Define these empty classes: Animal, Mammal, Amphibian, Primate, Frog, Bat, Bird, Parrot, and Chimpanzee.
module Flys
  def fly
    puts "I'm a #{self.class}, I'm flying!"
  end

end

class Animal
  attr_reader :num_legs, :has_tail, :warm_blooded

  def initialize(num_legs=4,has_tail=true,warm_blooded = true)
    @num_legs = num_legs
    @has_tail = true
    @warm_blooded = true
  end

end

class Mammal < Animal
  attr_reader :hair_color

  def initialize(hair_color='black')
    @hair_color = hair_color
    super()
  end
end

class Amphibian < Animal
  attr_reader :is_slimy

  def initialize(is_slimy=true)
    @is_slimy = true
    super()
  end

end

class Primate < Mammal
  attr_reader :has_thumbs

  def initialize(has_thumbs=true)
    @has_thumbs = true
    super()
  end
end

class Frog < Amphibian
  attr_reader :eats_bugs

  def initialize(eats_bugs=true)
    @eats_bugs = true
    super()
  end
end

class Bat < Mammal
  include Flys
  attr_reader :has_wings, :is_blind

  def initialize(has_wings=true)
    @has_wings = true
    @is_blind = true
    super()
  end
end

class Bird < Mammal
  include Flys
  attr_reader :has_wings

  def initialize(has_wings=true)
    @has_wings = true
    super()
  end
end

class Parrot < Bird
  attr_reader :is_colorful

  def initialize(is_colorful=true)
    @is_colorful = true
    super()
  end
end

class Chimpanzee < Primate
  attr_reader :can_climb

  def initialize(can_climb=true)
    @can_climb = true
    super()
  end
end
