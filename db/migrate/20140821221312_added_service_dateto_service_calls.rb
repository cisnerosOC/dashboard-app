class AddedServiceDatetoServiceCalls < ActiveRecord::Migration
  def change
    change_table  :service_calls do |t|
      t.datetime :service_date, default: DateTime.now.in_time_zone.midnight
    end
    change_table :customers do |t|
      t.string :email, default: "", null: false
    end
    change_table :employees do |t|
      t.string :email, default: "", null: false
    end
  end
end
