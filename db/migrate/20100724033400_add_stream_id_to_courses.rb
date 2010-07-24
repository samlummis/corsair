class AddStreamIdToCourses < ActiveRecord::Migration
  def self.up
    add_column :streams, :course_id, :integer
    add_column :lectures, :stream_id, :integer
  end

  def self.down
    remove_column :streams, :course_id, :integer
    remove_column :lectures, :stream_id, :integer
  end
end
