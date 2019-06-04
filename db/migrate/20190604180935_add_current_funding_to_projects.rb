class AddCurrentFundingToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :current_funding, :integer
  end
end
