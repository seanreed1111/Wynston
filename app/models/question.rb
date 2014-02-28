class Question < ActiveRecord::Base
	attr_accessible :question_text

    belongs_to :assessment
    has_many :choices, :dependent => :destroy
    has_many :answers

    # accepts_nested_attributes_for :choices, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

end
