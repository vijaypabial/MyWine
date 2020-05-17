class CreateWineListsItems < ActiveRecord::Migration[6.0]
  def change
    create_table :wine_lists_items do |t|
      t.references :user, null: false, foreign_key: true
      t.references :wine, null: false, foreign_key: true
      t.boolean :for_trade

      t.timestamps
    end
  end
end
