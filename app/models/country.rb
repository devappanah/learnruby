class Country < ActiveRecord::Base
  has_many :cities
  has_many :businesses, through: :cities

end
