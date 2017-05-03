class ChangeTypeToCategory < ActiveRecord::Migration[5.0]
  def change
    rename_column :entries, :type, :category
  end
end
