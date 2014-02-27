class Course < ActiveRecord::Base
	attr_accessible :title, :description, :intro_video, :syllabus, :language,
   :hours, :prerequisites, :start_date, :end_date, :image_url, :professor_id, 
   :video, :about
	has_attached_file :video
	belongs_to :professor
	has_many :assessments, :dependent => :destroy 

	has_many :enrollments
  validates_attachment_content_type :video, :content_type => /.*/

	accepts_nested_attributes_for :assessments, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true 

end
