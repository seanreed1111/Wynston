class Question < ActiveRecord::Base
<<<<<<< HEAD
    has_many :choices
    has_many :answers
    attr_accessible :question_text
=======
	attr_accessible :question_text

    belongs_to :assessment
    has_many :choices, :dependent => :destroy
    has_many :answers

    accepts_nested_attributes_for :choices, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true


>>>>>>> course_guide
end
