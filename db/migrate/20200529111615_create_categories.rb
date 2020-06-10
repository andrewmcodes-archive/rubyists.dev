class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false, index: true
      t.integer :categorizations_count, null: false, default: 0
      t.timestamps
    end
  end
end
