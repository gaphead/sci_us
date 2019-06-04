class AddDesiredFundingToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :desired_funding, :integer, default: 500, null: false
  end
end
