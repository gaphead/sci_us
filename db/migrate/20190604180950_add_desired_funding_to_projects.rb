class AddDesiredFundingToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :desired_funding, :integer
  end
end
