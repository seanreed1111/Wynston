class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
    	t.integer :grade
    	t.integer :course_module_id
      t.timestamps
    end
  end
end
