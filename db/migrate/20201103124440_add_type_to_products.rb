class AddTypeToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :type, :text
  end
end
