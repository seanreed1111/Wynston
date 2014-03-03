class Assessment < ActiveRecord::Base
	attr_accessible :grade, :questions_attributes, :choices,  :_destroy, :name, :questions

    belongs_to :course
    has_many :questions, :dependent => :destroy
    has_many :choices, :dependent => :destroy
    # belongs_to :course_module

    accepts_nested_attributes_for :questions, :reject_if => lambda {|a| a[:question_text].blank? }, :allow_destroy => true
    # accepts_nested_attributes_for :choices, :reject_if => lambda {|a| a[:question_text].blank? }, :allow_destroy => true


end
