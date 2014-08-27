class ChangeServiceCalltablecolumnStatustoBoolean < ActiveRecord::Migration
  def change
     # change_column :service_calls, :status, :boolean, default: false
     change_table :service_calls do |t|
        t.remove :status
        t.boolean :status, default: false
     end
  end
end
