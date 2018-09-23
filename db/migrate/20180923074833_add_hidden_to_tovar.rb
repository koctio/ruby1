class AddHiddenToTovar < ActiveRecord::Migration[5.2]
  def change
    add_column :tovars, :hidden, :boolean
  end
end
