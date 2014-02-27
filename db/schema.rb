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

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20140224225058) do
=======
ActiveRecord::Schema.define(:version => 20140226183416) do
>>>>>>> course_guide

  create_table "answers", :force => true do |t|
    t.integer  "choice_id"
    t.integer  "student_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "assessments", :force => true do |t|
    t.integer  "grade"
    t.integer  "course_module_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "course_id"
  end

  create_table "choices", :force => true do |t|
    t.text     "answer"
    t.boolean  "correct"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "course_modules", :force => true do |t|
    t.string   "title"
    t.integer  "course_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "course_professors", :force => true do |t|
    t.integer  "course_id"
    t.integer  "professor_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

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
    t.integer  "professor_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "video_file_name"
    t.string   "video_content_type"
    t.integer  "video_file_size"
    t.datetime "video_updated_at"
<<<<<<< HEAD
=======
    t.integer  "course_id"
>>>>>>> course_guide
  end

  create_table "enrollments", :force => true do |t|
    t.date     "date_enrolled"
    t.integer  "final_grade"
    t.boolean  "certification"
    t.date     "date_completed"
    t.integer  "student_id"
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

  create_table "questions", :force => true do |t|
    t.text     "question_text"
    t.integer  "assessment_id"
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
    t.string   "role"
    t.string   "education"
    t.string   "gender"
    t.string   "location"
    t.date     "birthday"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
