class RenameUsersToStudents < ActiveRecord::Migration
  def up
    rename_table :users, :students
  end

  def down
    rename_table :students, :users
  end
end
