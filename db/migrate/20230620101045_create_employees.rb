class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.date :date_of_birth
      t.integer :mobile_number
      t.float :years_of_expeerience

      t.timestamps
    end
  end
end
