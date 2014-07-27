class ChangeColumnNamefromdiscriptionToDescription < ActiveRecord::Migration
    def change
      change_table  :services do |t|
       t.rename :discription, :description
      end
    end
end
