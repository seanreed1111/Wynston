class Enrollment < ActiveRecord::Base
    belongs_to :course
    belongs_to :student

    attr_accessible :date_enrolled, :date_completed,
                    :final_grade, :certification

end
