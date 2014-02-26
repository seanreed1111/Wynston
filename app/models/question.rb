class Question < ActiveRecord::Base
	belongs_to :course
    has_many :choices
    has_many :answers
    attr_accessible :question_text
end
