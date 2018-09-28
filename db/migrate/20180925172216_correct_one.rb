class CorrectOne < ActiveRecord::Migration[5.2]
  def ud
    sql = <<-END
      ALTER TABLE tovars
      ADD CONSTRAINT fk_tovars_groups
      FOREIGN KEY (group_id)
      REFERENCES groups(id);
    END
    connection.execute(sql)
  end
  
  def down
    sql = <<-END
      ALTER TABLE tovars
      DROP CONSTRAINT fk_tovars_groups;
    END
    connection.execute(sql)

  end
end
