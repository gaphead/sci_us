class DeletePriceFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :price_cents
  end
end
