class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.string :state
      t.string :project_sku
      t.monetize :amount
      t.jsonb :payment
      t.references :user, foreign_key: true
      t.monetize :amount, currency: { present: false }
      t.timestamps
    end
  end
end
