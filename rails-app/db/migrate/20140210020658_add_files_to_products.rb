class AddFilesToProducts < ActiveRecord::Migration
  def change
    add_column :products, :preview, :string
    add_column :products, :file, :string
  end
end
