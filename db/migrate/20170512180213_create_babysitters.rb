class CreateBabysitters < ActiveRecord::Migration[5.0]
  def change
    create_table :babysitters do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :phone_number
      t.integer :rate

      t.timestamps
    end
  end
end
