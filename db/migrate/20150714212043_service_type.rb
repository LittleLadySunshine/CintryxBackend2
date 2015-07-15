class ServiceType < ActiveRecord::Migration
  def change
    create_table :ServiceType do |t|
      t.string :carpet_cleaning
      t.string :housekeeping
      t.string :painting 
    end
  end
end
