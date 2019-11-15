class AddSourceToTip < ActiveRecord::Migration[5.2]
  def change
    add_column :tips, :source, :string
  end
end
