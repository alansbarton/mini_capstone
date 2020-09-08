class AddInventoryAttribute < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :invientory, :string
  end
end
