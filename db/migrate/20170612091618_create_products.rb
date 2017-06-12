class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.text :front_image
      t.text :back_image

      t.timestamps
    end
  end
end
