class CreateHelos < ActiveRecord::Migration
  def change
    create_table :helos do |t|
      t.integer :account_id
      t.integer :kubun
      t.text :word
      t.datetime :ts

      t.timestamps null: false
    end
  end
end
