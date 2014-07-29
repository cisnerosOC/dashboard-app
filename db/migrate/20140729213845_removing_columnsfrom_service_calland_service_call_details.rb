class RemovingColumnsfromServiceCallandServiceCallDetails < ActiveRecord::Migration
  def change
    change_table :services do |t|
     t.remove :servicecall_id
    end
    change_table :service_calls do |t|
      t.remove :service_id
    end
    create_join_table :services, :service_calls

  end
end
