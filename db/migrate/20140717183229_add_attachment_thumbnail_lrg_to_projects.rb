class AddAttachmentThumbnailLrgToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :thumbnail_lrg
    end
  end

  def self.down
    drop_attached_file :projects, :thumbnail_lrg
  end
end
