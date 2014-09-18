class AddUserSlug < ActiveRecord::Migration
  def change
    change_table :artists do |t|
      t.string :slug
    end
  end
end
