class Choice < ActiveRecord::Base
    belongs_to  :question
    has_many    :answers

    attr_accessible :answer, :correct
end
