class Question < ActiveRecord::Base
	attr_accessible :question_text, :assessment_id, :choices_attributes

    belongs_to :assessment
    has_many :choices
    has_many :answers

    accepts_nested_attributes_for :choices,allow_destroy: true

end
