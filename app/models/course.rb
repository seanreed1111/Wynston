class Course < ActiveRecord::Base
<<<<<<< HEAD
	attr_accessible :title, :description, :intro_video, :syllabus, :language,
   :hours, :prerequisites, :start_date, :end_date, :image_url, :professor_id, 
   :video, :about
	has_attached_file :video
	has_many :assessments
	belongs_to :professor
=======
	attr_accessible :title, :description, :intro_video, :syllabus, :language, :hours, :prerequisites, :start_date, :end_date, :image_url, :professor_id 
	
	has_many :assessments, :dependent => :destroy 
	has_many :professors
>>>>>>> course_guide
	has_many :enrollments
  validates_attachment_content_type :video, :content_type => /.*/

	accepts_nested_attributes_for :assessments, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true 

end
