class CreateWhirls < ActiveRecord::Migration
  def change
    create_table :whirls do |t|
      t.references :baker, index: true
      t.integer :priority

      t.timestamps null: false
    end
  end
end
