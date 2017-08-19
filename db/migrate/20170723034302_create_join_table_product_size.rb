class CreateJoinTableProductSize < ActiveRecord::Migration[5.0]
  def change
    create_join_table :products, :sizes do |t|
       t.index [:product_id, :size_id]
    end
  end
end