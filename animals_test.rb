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
  def initialize(name, age, status, legs)
    super(name, age, status)
    @legs = legs
  end
  def legs_downcased
    @legs.downcase
  end


  def legs_classification
    if legs_downcased == '0 legs'
      "These are dolphins, whales"
    elsif legs_downcased == '2 legs'
      "These are birds"
    elsif legs_downcased == '4 legs'
      "These are primates, horses, tigers"
    end
  end
end

# mam1 = ['pinky', 45, 'sick', '2 legs']
# mam2 = ['corky', 65, 'healthy', '0 legs']

# mammals = [mam1, mam2]
# mammals.each do |x|
#   puts x
# end

class Zoo
  def initialize(animals)
    @animals = animals
  end
  def search(kind:'', legs:'')
    results = []

    @animals.each do |x|
      if x.class.name == kind and x.legs == legs
        results.push(x)
      end
    end

    results
  end
end

monkey = Mammal.new('Monkey', 23, 'sick', '2 legs')

whale = Mammal.new('Whale', 342, 'healthy', '0 legs')

kangaroo = Mammal.new('Kangaroo', 56, 'healthy', '2 legs')

suan_dusit = Zoo.new([monkey, whale, kangaroo])

# puts monkey.legs

puts suan_dusit.search(kind: 'Mammal', legs: '2 legs').inspect