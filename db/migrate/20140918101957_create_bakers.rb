class CreateBakers < ActiveRecord::Migration
  def change
    create_table :bakers do |t|
      t.text :name
      t.datetime :baked_at

      t.timestamps
    end
  end
end
