class Institution < ActiveRecord::Base
 	has_many :professors
  has_many :courses, through: :professors

  attr_accessible :name
end
