class RemoveNeedFromCategory < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :need, :string
    rename_column :categories, :service, :cat_type
  end
end
