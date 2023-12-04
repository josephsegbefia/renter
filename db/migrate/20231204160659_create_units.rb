class CreateUnits < ActiveRecord::Migration[7.1]
  def change
    create_table :units do |t|
      t.integer :price
      t.text :description
      t.boolean :available

      t.timestamps
    end
  end
end
