class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
    	t.date 		:date_enrolled
    	t.integer :final_grade
    	t.boolean :certification
    	t.date 		:date_completed
    	t.integer :student_id 
      t.integer :course_id
      t.timestamps
    end
  end
end
