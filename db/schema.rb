# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140305161250) do
  #answers table records student answers to questions 
  create_table "answers", :force => true do |t|
    t.integer  "choice_id"   # student answer submitted 
    t.integer  "student_id"  # id student who answered the question
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end
  #test, consider it a basket for questions
  create_table "assessments", :force => true do |t|
    t.integer  "grade"
    t.integer  "course_module_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "course_id"  #id associated course 
    t.string   "name"
  end
  #choices for a question
  create_table "choices", :force => true do |t|
    t.text     "answer"   #content of the choice
    t.boolean  "correct"  #true or false if its correct 
    t.integer  "question_id"  #associated question 
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end
  #course modules == lesson 
  create_table "course_modules", :force => true do |t|
    t.string   "title"  
    t.integer  "course_id"  #associated course
    t.integer  "user_id"    #id professor who created the lesson
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end
  #table to list course professors.
  #this table is not needed if User.roles are used to id students/ professors/ admins instead
  create_table "course_professors", :force => true do |t|
    t.integer  "course_id"
    t.integer  "professor_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end
  #organize courses 
  create_table "courses", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "intro_video"
    t.text     "syllabus"
    t.string   "language"
    t.integer  "hours"
    t.text     "prerequisites"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "image_url"
    t.integer  "professor_id"   #we started using User.id to associate 
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "video_file_name"
    t.string   "video_content_type"
    t.integer  "video_file_size"
    t.datetime "video_updated_at"
    t.integer  "course_id"  #unneeded, this item can be dropped 
    t.string   "picture"
  end
  #table to check if a  user is enrolled in a course 
  create_table "enrollments", :force => true do |t|
    t.date     "date_enrolled"    
    t.integer  "final_grade"
    t.boolean  "certification"
    t.date     "date_completed" 
    t.integer  "student_id"   #User.id to check for student 
    t.integer  "course_id" 
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "institutions", :force => true do |t|
    t.string   "name"
    t.integer  "professor_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "lectures", :force => true do |t|
    t.text     "note"
    t.string   "note_url"
    t.string   "video_url"
    t.integer  "course_module_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end
  #questions for assessments 
  create_table "questions", :force => true do |t|
    t.text     "question_text"  #content for question
    t.integer  "assessment_id"  #associated assessment 
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "image_url"
    t.string   "password_digest"
    t.string   "about_me"
    t.string   "type"
    t.string   "course_register"
    t.string   "phone"
    t.string   "institution"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "picture"
    t.string   "role" #student/ professor/ admin 
    t.string   "education"
    t.string   "gender"
    t.string   "location"
    t.date     "birthday"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
