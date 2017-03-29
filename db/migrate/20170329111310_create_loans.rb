class CreateLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.string :fname
      t.string :lname
      t.string :mname
      t.string :id_no
      t.string :telephone
      t.string :gender
      t.string :work
      t.string :county
      t.string :school
      t.string :amount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
