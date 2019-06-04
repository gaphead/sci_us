class FixSkuColumnNameForDonations < ActiveRecord::Migration[5.2]
  def change
    rename_column :donations, :project_sku, :project_id
  end
end
