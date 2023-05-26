class RemoveFirstNameAndRenameLastNameToName < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :first_name
    rename_column :users, :last_name, :name
  end
end
