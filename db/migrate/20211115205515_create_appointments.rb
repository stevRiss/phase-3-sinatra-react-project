class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :issue
      t.datetime :startDate
      t.boolean :completed
      t.integer :customer_id
      t.integer :mechanic_id
    end
  end
end
