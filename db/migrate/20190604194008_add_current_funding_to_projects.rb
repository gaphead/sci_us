class AddCurrentFundingToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :current_funding, :integer, default: 0, null: false
  end
end
