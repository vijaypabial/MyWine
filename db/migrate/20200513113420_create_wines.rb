class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :title
      t.string :variety
      t.text :description
      t.text :wine_image
      t.decimal :price, precision: 8, scale:2

      t.timestamps
    end
  end
end
