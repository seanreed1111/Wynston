class Assessment < ActiveRecord::Base
    belongs_to :course
    has_many :questions
    belongs_to :course_module

    attr_accessible :grade
end
