class AddAuthorToInspirations < ActiveRecord::Migration[5.2]
  def change
    add_column :inspirations, :author, :string
  end
end
