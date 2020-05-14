class AddVineyardReferenceToWines < ActiveRecord::Migration[6.0]
  def change
    add_reference :wines, :vineyard, null: false, foreign_key: true
  end
end
