class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :discription
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :servicecall_id

      t.timestamps
    end
  end
end
