class CreateAnnouncements < ActiveRecord::Migration[6.0]
  def change
    create_table :announcements do |t|
      t.datetime :published_at, null: false
      t.string :announcement_type, null: false, default: "update"
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end
