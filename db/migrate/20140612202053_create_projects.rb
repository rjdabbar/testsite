class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :headline
      t.text :body
      t.text :client
      t.text :agency
      t.text :partner
      t.text :excerpt
      t.string :main_image
      t.string :thumbnail_lrg
      t.text :thumbnail_smcategory

      t.timestamps
    end
  end
end
