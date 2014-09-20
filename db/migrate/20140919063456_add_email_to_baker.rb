class AddEmailToBaker < ActiveRecord::Migration
  def change
    add_column :bakers, :email, :text
  end
end
