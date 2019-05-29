class AddResearcherStatusToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :researcher_status, :boolean
  end
end
