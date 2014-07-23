class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone1
      t.string :phone2

      t.timestamps
    end
  end
end
