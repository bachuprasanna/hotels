class CreateRestarents < ActiveRecord::Migration[5.0]
  def change
    create_table :restarents do |t|
      t.string :Name_of_restarent

      t.timestamps
    end
  end
end
