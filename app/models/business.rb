class Business < ActiveRecord::Base
  has_many :reviews
  has_many :promotions
  has_many :certificates
  has_many :services
  has_many :staff
  has_many :photos
  
  has_many :users, through: :reviews

  validates :name, presence: true

  belongs_to :category
end
