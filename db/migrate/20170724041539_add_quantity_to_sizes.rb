class AddQuantityToSizes < ActiveRecord::Migration[5.0]
  def change
    add_column :sizes, :quantity, :integer
  end
end
