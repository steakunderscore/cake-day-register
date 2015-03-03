class CreateCakeDays < ActiveRecord::Migration
  def change
    create_table :cake_days do |t|
      t.references :baker, index: true
      t.date :date

      t.timestamps null: false
    end
    add_foreign_key :cake_days, :bakers
  end
end
