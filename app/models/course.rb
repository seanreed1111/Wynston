class Course < ActiveRecord::Base
	attr_accessible :title, :description, :intro_video, :syllabus, :language, :hours, :prerequisites, :start_date, :end_date, :image_url
	
	has_many :assessments
	has_many :professors
	has_many :enrollments

end
