class RemovePostFromCategory < ActiveRecord::Migration[5.0]
  def change
    remove_reference :categories, :post, foreign_key: true
  end
end
