class CourseProfessor < ActiveRecord::Base
  belongs_to  :course
  belongs_to  :professor
end
