class CreateFrames < ActiveRecord::Migration
  def self.up
  create_table :frames do |t|
    t.integer :artist_id
    t.text :rules
    t.timestamps
  end
end

def self.down
  drop_table :frames
end
end
