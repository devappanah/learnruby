class Human
	attr_reader :name, :age, :location
	attr_writer :name, :age
	# attr_accessor :name, :age, :location
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