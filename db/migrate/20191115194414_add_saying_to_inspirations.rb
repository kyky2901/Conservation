class AddSayingToInspirations < ActiveRecord::Migration[5.2]
  def change
    add_column :inspirations, :saying, :string
  end
end
