class CreateMechanics < ActiveRecord::Migration[6.1]
  def change
    create_table :mechanics do |t|
      t.string :name
      t.string :specialty
      t.string :picture
    end
    
  end
end
