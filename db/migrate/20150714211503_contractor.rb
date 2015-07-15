class Contractor < ActiveRecord::Migration
  def change
    create_table :contractor do |t|
      t.boolean :active_status
      t.string :company_name
      t.string :main_contact
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zip
      t.string :username
      t.string :email
      t.string :phone
      t.string :fax
      t.string :tax_id
      t.boolean :direct_deposit
      t.string :password_digest
      t.string :commentsrails
    end
  end
end
