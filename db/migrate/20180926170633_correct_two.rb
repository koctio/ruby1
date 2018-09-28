class CorrectTwo < ActiveRecord::Migration[5.2]
  
  def change
    
    add_column :tags, :factor_name, :string
    
    #execute <<-ENDSQL
    #  ALTER TABLE tags
    #  ADD factor_name varchar(255);
    #ENDSQL
    
    reversible do |dir|
      dir.up do
        execute <<-ENDSQL
          ALTER TABLE tags
          ADD factor_x float[];
        ENDSQL
      end
      dir.down do
        execute <<-ENDSQL
          ALTER TABLE tags
          DROP factor_x;
        ENDSQL
      end
    end
    
    reversible do |dir|
      dir.up do
        execute <<-ENDSQL
          ALTER TABLE tags
          ADD factor_y float[];
        ENDSQL
      end
      dir.down do
        remove_column :tags, :factor_y
      end
    end
    
    
  end
  
end
