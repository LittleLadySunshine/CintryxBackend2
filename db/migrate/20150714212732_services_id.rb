class ServicesId < ActiveRecord::Migration
  def change
    add_column :Services, :property_id, :integer
    add_column :Services, :contractor_id, :integer
    add_column :Services, :status_id, :integer
    add_column :Services, :ServiceType_id, :integer
  end
end
