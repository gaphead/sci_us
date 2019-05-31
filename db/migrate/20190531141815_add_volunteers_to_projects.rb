class AddVolunteersToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :volunteers, :integer
  end
end
