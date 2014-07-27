class ChangeServicetypetoService < ActiveRecord::Migration
  def change
    change_table  :service_calls do |t|
      t.rename :servicetype_id, :service_id
    end
  end
end
