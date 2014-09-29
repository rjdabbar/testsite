class AddFlagToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :flag, :boolean
  end
end
