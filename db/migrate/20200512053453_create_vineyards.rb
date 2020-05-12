class CreateVineyards < ActiveRecord::Migration[6.0]
  def change
    create_table :vineyards do |t|
      t.string :title
      t.text :about
      t.text :main_image

      t.timestamps
    end
  end
end
