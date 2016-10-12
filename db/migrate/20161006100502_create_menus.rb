class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.integer :restarents_id
      t.string :item
      t.float :cost

      t.timestamps
    end
  end
end
