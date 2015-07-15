class Property < ActiveRecord::Migration
  def change
    create_table :property do |t|
      t.string :property_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone
      t.string :fax
      t.string :property_email
      t.string :notes
      t.string :manager_name
      t.string :supervisor_name
      t.integer :unit_total
      t.string :manager_email
      t.string :supervisor_email
    end
  end
end
