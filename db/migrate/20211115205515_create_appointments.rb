class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :appointment_reason
      t.datetime :appointment_date
      t.boolean :completed
      t.integer :customer_id
      t.integer :mechanic_id
    end
  end
end
