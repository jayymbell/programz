class RenamePermissionAction < ActiveRecord::Migration[5.1]
  def change
    rename_column :permissions, :action, :activity
  end
end
