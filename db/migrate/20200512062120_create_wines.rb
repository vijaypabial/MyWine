class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :title
      t.text :description
      t.text :image
      t.decimal :price

      t.timestamps
    end
  end
end
