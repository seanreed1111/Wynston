class Assessment < ActiveRecord::Base
	attr_accessible :grade, :created_at, :updated_at, :course_id

    belongs_to :course
    has_many :questions, :dependent => :destroy
    belongs_to :course_module


    attr_accessible :grade
    accepts_nested_attributes_for :questions, :allow_destroy => true #, :reject_if => lambda {|a| a[:content].blank? }



end
