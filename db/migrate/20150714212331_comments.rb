class Comments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comments
      t.integer :property_id
      t.integer :contractor_id
      t.timestamps
    end
  end
end
