class CreateServiceCallDetails < ActiveRecord::Migration
  def change
    create_table :service_call_details do |t|
      t.integer :service_call_id
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end
