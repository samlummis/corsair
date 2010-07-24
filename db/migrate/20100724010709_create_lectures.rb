class CreateLectures < ActiveRecord::Migration
  def self.up
    create_table :lectures do |t|
      t.string :days
      t.start :time
      t.finish :time
      t.string :room

      t.timestamps
    end
  end

  def self.down
    drop_table :lectures
  end
end
