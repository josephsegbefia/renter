class AddTitleToUnits < ActiveRecord::Migration[7.1]
  def change
    add_column :units, :title, :string
  end
end
