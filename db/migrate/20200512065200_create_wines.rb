class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :title
      t.string :variety
      t.string :description
      t.text :image

      t.timestamps
    end
  end
end
