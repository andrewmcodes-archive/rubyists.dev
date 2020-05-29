#
# Was told to do this by lol_dba
#
class AddMissingIndexes < ActiveRecord::Migration[6.0]
  def change
    add_index :active_storage_attachments, [:record_id, :record_type]
  end
end
