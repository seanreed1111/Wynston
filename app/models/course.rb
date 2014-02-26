class Course < ActiveRecord::Base
	attr_accessible :title, :description, :intro_video, :syllabus, :language,
   :hours, :prerequisites, :start_date, :end_date, :image_url, :professor_id, 
   :video, :about 
	has_attached_file :video
	has_many :assessments
	has_many :professors
	has_many :enrollments
  validates_attachment_content_type :video, :content_type => /.*/

end
