class CreateCakeDays < ActiveRecord::Migration
  def change
    create_table :cake_days do |t|
      t.references :baker, index: true
      t.references :cake, index: true
      t.date :date

      t.timestamps null: false
    end
    add_foreign_key :cake_days, :bakers
    add_foreign_key :cake_days, :cakes
  end
end
