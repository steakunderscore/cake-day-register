class CreateCakes < ActiveRecord::Migration
  def change
    create_table :cakes do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
