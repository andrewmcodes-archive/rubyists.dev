class CreateCategorizations < ActiveRecord::Migration[6.0]
  def change
    create_table :categorizations do |t|
      t.string :categorizable_type, null: false, index: true
      t.bigint :categorizable_id, null: false, index: true
      t.references :category, index: true, null: false
      t.timestamps
    end

    add_index :categorizations, [:categorizable_id, :categorizable_type], name: "categorizationable_id_type_idx"
  end
end
