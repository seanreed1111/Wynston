class Course < ActiveRecord::Base
	attr_accessible :title, :description, :intro_video, :syllabus, :language, :hours, :prerequisites, :start_date, :end_date, :image_url, :professor_id 
	
	has_many :assessments
	has_many :professors
	has_many :enrollments

	# accepts_nested_attributes_for :course_modules
	accepts_nested_attributes_for :assessments
	accepts_nested_attributes_for :lectures
	accepts_nested_attributes_for :questions
	accepts_nested_attributes_for :choices 

end
