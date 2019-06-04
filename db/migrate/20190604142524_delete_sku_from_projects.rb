class DeleteSkuFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :sku
  end
end
