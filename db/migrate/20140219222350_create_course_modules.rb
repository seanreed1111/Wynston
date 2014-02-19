class CreateCourseModules < ActiveRecord::Migration
  def change
    create_table :course_modules do |t|
    	t.string :title
    	t.integer :course_id
    	t.integer :user_id
      t.timestamps
    end
  end
end
