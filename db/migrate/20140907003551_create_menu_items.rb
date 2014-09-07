class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :itemName
      t.string :servingTime
      t.string :sodium
      t.string :carb
      t.string :fat
      t.string :calorie
      t.string :cholesterol
      t.string :protein
      t.string :location

      t.timestamps
    end

    add_index :menu_items, :location
    add_index :menu_items, :servingTime
  end
end
