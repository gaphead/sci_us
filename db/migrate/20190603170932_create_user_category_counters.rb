class CreateUserCategoryCounters < ActiveRecord::Migration[5.2]
  def change
    create_table :user_category_counters do |t|
      t.string :category
      t.integer :counter
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
