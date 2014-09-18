class CreatePatches < ActiveRecord::Migration
  def self.up
  create_table :patches do |t|
    t.integer :frame_id
    t.integer :artist_id
    t.integer :x
    t.integer :y
    t.integer :width
    t.integer :height
    t.timestamps
  end
end

def self.down
  drop_table :patches
end
end
