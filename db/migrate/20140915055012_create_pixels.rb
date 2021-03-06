class CreatePixels < ActiveRecord::Migration
  def self.up
    create_table :pixels do |t|
      t.integer :x
      t.integer :y
      t.integer :r
      t.integer :g
      t.integer :b
      t.decimal :a
      t.integer :layer_id
      t.timestamps
    end
  end

  def self.down
    drop_table :pixels
  end
end
