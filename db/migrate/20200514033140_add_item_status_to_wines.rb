class AddItemStatusToWines < ActiveRecord::Migration[6.0]
  def change
    add_column :wines, :status, :integer, default: 0
  end
end
