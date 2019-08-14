class RemoveAdressToRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :adress
  end
end
