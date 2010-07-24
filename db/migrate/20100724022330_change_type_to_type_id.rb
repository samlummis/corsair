class ChangeTypeToTypeId < ActiveRecord::Migration
  def self.up
    rename_column :streams, :type, :type_id
  end

  def self.down
    rename_column :streams, :type_id, :type
  end
end
