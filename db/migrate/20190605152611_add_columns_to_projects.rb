class AddColumnsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :context, :text
    add_column :projects, :significance, :text
    add_column :projects, :goals, :text
    add_column :projects, :timedate, :date
    add_column :projects, :timetext, :text
    add_column :projects, :rresearcherbio, :text
  end
end
