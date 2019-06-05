class AddAboutToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :about, :text
  end
end
