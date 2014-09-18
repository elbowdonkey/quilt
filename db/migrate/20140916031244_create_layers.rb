class CreateLayers < ActiveRecord::Migration
  def self.up
  create_table :layers do |t|
    t.string :type
    t.integer :patch_id
    t.timestamps
  end
end

def self.down
  drop_table :layers
end
end
