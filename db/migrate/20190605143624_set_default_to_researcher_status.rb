class SetDefaultToResearcherStatus < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :researcher_status, :boolean, default: false

  end
end
