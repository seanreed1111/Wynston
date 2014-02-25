class Lecture < ActiveRecord::Base
    belongs_to :course
    belongs_to :course_module
end
