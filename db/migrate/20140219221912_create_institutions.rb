class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
    	t.string 	:name
    	t.integer :professor_id
      t.timestamps
    end
  end
end
