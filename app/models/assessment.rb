class Assessment < ActiveRecord::Base
	attr_accessible :grade, :questions_attributes, :choices,  :_destroy, :name, :questions

    belongs_to :course_module
    has_many :questions, :dependent => :destroy
    has_many :choices, :dependent => :destroy
   

    accepts_nested_attributes_for :questions, allow_destroy: true

end
