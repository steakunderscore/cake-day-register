class CreateCakes < ActiveRecord::Migration
  def change
    create_table :cakes do |t|
      t.text :name
      t.references :baker, index: true

      t.timestamps
    end
  end
end
