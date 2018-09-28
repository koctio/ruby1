class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.string :color
      t.integer :code
      
      t.timestamps
    end
    
    add_column :tovars, :group_id, :integer
    #change_table :tovats do |t|
    #  t.belongs_to :group
    #end
    
  end
end
