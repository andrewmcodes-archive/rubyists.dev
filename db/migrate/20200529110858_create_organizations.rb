class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.string :url
      t.boolean :company, null: false, default: false
      t.integer :pricing_strategy, null: false, default: 0

      t.timestamps
    end
  end
end
