class Human
  # attr_reader :name, :age, :location
  # attr_writer :name, :age
  attr_accessor :name, :age, :location
  def initialize(name, age, location)
    @name = name
    @age = age
    @location = location
  end
  # def name
  # 	@name
  # end
  # def name=(value)
  # 	@age = value
  # end
end
class Engineer < Human
  def initialize(name, age, location, type)
    super(name, age, location)
    @type = type
  end
  def job
    if @type.downcase == 'civil'
      "Build bridges & buildings"
    elsif @type.downcase == 'software'
      "Builds Software"
    elsif @type.downcase == 'electrical'
      "Setup electricity"
    elsif @type.downcase == 'oil'
      'Dig for oil'
    end
  end

end
