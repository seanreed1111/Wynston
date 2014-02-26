class Choice < ActiveRecord::Base
	attr_accessible :answer, :correct, :question_id

    belongs_to  :question
    has_many    :answers

    # t.text     ""
    # t.boolean  ""
    # t.integer  ""
    # t.datetime "created_at",  :null => false
    # t.datetime "updated_at", 

end
