class CreateLectures < ActiveRecord::Migration
  def self.up
    create_table :lectures do |t|
      t.string :days
      t.time :start
      t.time :finish
      t.string :room

      t.timestamps
    end
  end

  def self.down
    drop_table :lectures
  end
end
