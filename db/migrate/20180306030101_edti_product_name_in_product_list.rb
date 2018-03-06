class EdtiProductNameInProductList < ActiveRecord::Migration[5.0]
  def change
    remove_column :product_lists, :product_name, :integer
    add_column :product_lists, :product_name, :string
  end
end
