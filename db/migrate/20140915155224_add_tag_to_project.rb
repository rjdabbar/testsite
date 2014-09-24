class AddTagToProject < ActiveRecord::Migration
  def change
    add_column :projects, :tag, :string
  end
end
