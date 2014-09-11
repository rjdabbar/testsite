class AddAttachmentThumbnailSmcategoryToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :thumbnail_smcategory
    end
  end

  def self.down
    drop_attached_file :projects, :thumbnail_smcategory
  end
end
