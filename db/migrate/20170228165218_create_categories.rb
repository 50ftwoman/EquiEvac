class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :service
      t.string :need
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
