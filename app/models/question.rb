class Question < ActiveRecord::Base
    has_many :choices
    has_many :answers
    attr_accessible :question_text
end
