class Answer < ActiveRecord::Base
	attr_accessible :created_at, :updated_at

  belongs_to  :choice
  belongs_to  :student
end
