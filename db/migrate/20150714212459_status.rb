class Status < ActiveRecord::Migration
  def change
    create_table :status do |t|
      t.string :completed
      t.string :declined
      t.string :accepted
      t.string :pending
    end
  end
end
