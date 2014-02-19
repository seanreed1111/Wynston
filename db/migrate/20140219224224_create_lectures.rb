class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
    	t.text 	:note
    	t.string :note_url
    	t.string :video_url
    	t.integer :course_module_id
      t.timestamps
    end
  end
end
