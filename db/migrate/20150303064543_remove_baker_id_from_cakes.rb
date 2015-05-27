class RemoveBakerIdFromCakes < ActiveRecord::Migration
  def change
    remove_column :cakes, :baker_id
  end
end
