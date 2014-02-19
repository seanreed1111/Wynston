class Institution < ActiveRecord::Base
    has_many :professors
    has_many :courses, thorough :professors
end
