class ChangeServiceCalltablecolumnStatustoBoolean < ActiveRecord::Migration
  def change
     change_column :service_calls, :status, :boolean, default: false
  end
end
