class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :image
      t.text :name
      t.numeric :price
      t.text :status

      t.timestamps
    end
  end
end
