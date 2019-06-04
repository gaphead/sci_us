class AddGoalAndCampaignDurationToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :goal, :integer
    add_column :projects, :campaign_duration, :integer
  end
end
