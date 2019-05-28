class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :short_description
      t.text :long_description
      t.string :url
      t.string :location
      t.string :organization
      t.text :org_description
      t.boolean :active
      t.string :photo
      # t.references :favorites, foreign_key: true

      t.timestamps
    end
  end
end
