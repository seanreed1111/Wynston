class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
    	t.string 	:title
    	t.string 	:description
    	t.string 	:intro_video
    	t.text 		:syllabus
    	t.string 	:language
    	t.integer	:hours
    	t.text 		:prerequisites
    	t.date		:start_date
    	t.date 		:end_date
    	t.string	:image_url
        t.integer   :professor_id
      t.timestamps
    end
  end
end
