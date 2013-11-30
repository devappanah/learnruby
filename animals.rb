colors = ['red', 'green', 'blue']

colors.each do |x|
  puts x
end

cars = ['ferrari', 'lamborgini', 'porsche']
cars.each do |y|
  puts y
end

man1 = {name:'josh', age:23, location:'bkk'}
man2 = {name:'pete', age:32, location:'sg'}

men = [man1, man2]

end

class Animal
  attr_accessor :name, :age, :status
  def initialize 
    @name = name
    @age = age
    @status = status

  end
end

class Mammal < Animal
  attr_accessor :legs

  def initialize(name, age, status, type, legs)
    super(name, age, status)
    @type = type
    @legs = legs
  end

  def type_downcased
    @type.downcase 
  end

  def type
    if type_downcased == 'primates'
      "Includes humans and monkeys"
    elsif type_downcased == 'marsupials'
      "Includes Koala Bears and Tasmanian devil"
    elsif type_downcased == 'ocean'
      "Includes whales and dolphin"
    elsif type_downcased == 'pantera'
      "Include cats and lions"
    end
  end

end

class Birds < Animal
  def initialize(name, age, status, legs, wings)
    super(name, age, status)
    @legs = 2
    @wings = 2
  end
end

class Zoo 
  def initialize(animals = [whale, lion, giraffe])
    @animals = animals
  end

end

monkey = Mammal.new('Monkey', 32, 'alive', 'primates', 2)

whale = Mammal.new('Whale', 450, 'alive', 'ocean', 0)

lion  = Mammal.new('Lion', 88, 'sick' 'pantera', 4)

animals = [whale, lion, giraffe]

dusit = Zoo.new(animals)


