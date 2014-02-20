class Institution < ActiveRecord::Base
    has_many :professors
    has_many :courses, through: :professors
end
