class CreateCourseProfessors < ActiveRecord::Migration
  def change
    create_table :course_professors do |t|
    	t.integer :course_id
    	t.integer :professor_id 
      t.timestamps
    end
  end
end
