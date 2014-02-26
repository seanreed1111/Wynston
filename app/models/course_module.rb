class CourseModule < ActiveRecord::Base
    belongs_to :course
    has_many :assessments
    has_many :lectures

    accepts_nested_attributes_for :assessments, :reject_if => lambda { |a| a[:content].blank?}, :allow_destroy => true

end
