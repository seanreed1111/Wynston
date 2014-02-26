class Lecture < ActiveRecord::Base
	attr_accessible :note, :note_url, :video_url

    belongs_to :course_module
end
