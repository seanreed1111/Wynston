class Question < ActiveRecord::Base
    has_many :choices, :dependent => :destroy
    has_many :answers

    accepts_nested_attributes_for :choices, :reject_of => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
