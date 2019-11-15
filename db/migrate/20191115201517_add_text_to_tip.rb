class AddTextToTip < ActiveRecord::Migration[5.2]
  def change
    add_column :tips, :text, :string
  end
end
