class CreateBadges < ActiveRecord::Migration[6.0]
  def change
    create_table :badges do |t|
      t.string :title, null: false
      t.string :asset_url
      t.string :source_url
      t.string :description
      t.references :organization, index: true

      t.timestamps
    end
  end
end
