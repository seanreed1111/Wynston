class Lecture < ActiveRecord::Base
    belongs_to :course_module

    attr_accessible :note, :note_url, :video_url
end
