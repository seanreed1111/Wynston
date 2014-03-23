class CourseModule < ActiveRecord::Base
	attr_accessible :title, :course_id, :user_id, :updated_at, :created_at, :assessments_attributes, :lectures_attributes 

  belongs_to :course
  has_many :assessments
  has_many :lectures

  accepts_nested_attributes_for :assessments, :lectures, :allow_destroy => true

end
