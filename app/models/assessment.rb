class Assessment < ActiveRecord::Base
    belongs_to :course
    has_many :questions, :dependent => :destroy
    belongs_to :course_module

    accepts_nested_attributes_for :questions, :reject_if => lambda {|a| a[:content].blank? }, :allow_destroy => true

end
