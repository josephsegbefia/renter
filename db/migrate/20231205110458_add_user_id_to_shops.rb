class AddUserIdToShops < ActiveRecord::Migration[7.1]
  def change
    add_reference :shops, :user, null: false, foreign_key: true
  end
end
