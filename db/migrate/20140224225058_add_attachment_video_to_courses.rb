class AddAttachmentVideoToCourses < ActiveRecord::Migration
  def self.up
    change_table :courses do |t|
      t.attachment :video
    end
  end

  def self.down
    drop_attached_file :courses, :video
  end
end
