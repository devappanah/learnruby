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


class Animal
  attr_accessor :name, :age, :status
  def initialize(name, age, status) 
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

class Bird < Animal
  def initialize(name, age, status, legs, wings)
    super(name, age, status)
    @legs = 2
    @wings = 2
  end
end

class Zoo 
  def initialize(animals)
    @animals = animals
  end 

  def search(kind: '', legs: '')
    results = []

    @animals.each do |x|
      if x.class.name == kind and x.legs == legs
        results.push(x)
      end
    end

    results
  end

end

monkey = Mammal.new('Monkey', 32, 'alive', 'primates', 2)

whale = Mammal.new('Whale', 450, 'alive', 'ocean', 0)

lion  = Mammal.new('Lion', 88, 'sick', 'pantera', 4)

bird = Mammal.new('Bird', 34, 'alive', 'ocean', 2)


dusit = Zoo.new([whale, lion, monkey, bird])

puts dusit.search(kind: 'Mammal', legs: 2).inspect

