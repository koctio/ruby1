class CreateTags < ActiveRecord::Migration[5.2]
  
  def up
    create_table :tags, id: false do |t|
      t.string :name, null: false
      t.timestamps
    end
    execute <<-ENDSQL
      ALTER TABLE tags
      ADD CONSTRAINT pk_tags
      PRIMARY KEY (name);
    ENDSQL
    create_table :tags_tovars, id: false do |t|
      t.string :tag_id, null: false
      t.integer :tovar_id, null: false
    end
    execute <<-ENDSQL
      ALTER TABLE tags_tovars
      ADD CONSTRAINT pk_tags_tovars
      PRIMARY KEY (tag_id, tovar_id);
    ENDSQL
    execute <<-ENDSQL
      ALTER TABLE tags_tovars
      ADD CONSTRAINT fk_tags_tovars_tags
      FOREIGN KEY (tag_id)
      REFERENCES tags (name);
    ENDSQL
    execute <<-ENDSQL
      ALTER TABLE tags_tovars
      ADD CONSTRAINT fk_tags_tovars_tovars
      FOREIGN KEY (tovar_id)
      REFERENCES tovars (id);
    ENDSQL

    
  end
  
  def down
    drop_table :tags_tovars
    drop_table :tags
  end
  
end
