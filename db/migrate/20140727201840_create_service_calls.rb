class CreateServiceCalls < ActiveRecord::Migration
  def change
    create_table :service_calls do |t|
      t.string :status
      t.string :servicetype_id
      t.integer :customer_id
      t.integer :user_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
