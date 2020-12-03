class CreateBorrows < ActiveRecord::Migration[6.0]
  def change
    create_table :borrows do |t|
      t.integer :borrowid
      t.integer :memberid
      t.integer :bookid
      t.date :datefrom
      t.date :dateto

      t.timestamps
    end
  end
end
