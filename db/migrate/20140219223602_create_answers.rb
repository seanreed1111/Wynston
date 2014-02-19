class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
    	t.integer :choice_id
    	t.integer 	:student_id
      t.timestamps
    end
  end
end
