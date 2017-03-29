class DropTableBersaries < ActiveRecord::Migration[5.0]
  def change
    drop_table :bersaries
  end
end
