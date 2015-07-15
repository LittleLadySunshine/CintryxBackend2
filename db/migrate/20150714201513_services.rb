class Services < ActiveRecord::Migration
  def change
    create_table :Services do |t|
      t.string :unit_number
      t.string :unit_size
      t.boolean :townhouse, default: false
      t.date :service_date
      t.string :PO
      t.boolean :pad_replace, default: false
      t.boolean :inhouse, default: false
      t.integer :Unit_SQFT
      t.string :paint_type
      t.boolean :paint_ceiling, default: false
      t.boolean :paint_accent, default: false
      t.boolean :drywall, default: false
      t.boolean :vinyl, default: false
      t.boolean :heavy,  default: false
      t.date :completed
      t.date :time_requested
      t.timestamps
    end
  end
end
