class AddShopIdToUnits < ActiveRecord::Migration[7.1]
  def change
    add_reference :units, :shop, null: false, foreign_key: true
  end
end
