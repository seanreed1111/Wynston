class CourseModule < ActiveRecord::Base
    belongs_to :course
    has_many :assessments
    has_many :lectures
end
