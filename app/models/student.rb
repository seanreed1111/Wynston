class Student < User
  belongs_to :course
  has_many :enrollments
  has_many :courses, through :enrollments
  has_many :assessments, through :courses
end
