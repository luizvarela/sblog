class AlterPosts < ActiveRecord::Migration
  def up
     
     add_column :posts, :author, :string, :limit => 100, :default => 0, :null => false
     add_column :posts, :category, :string, :limit => 20, :default => "", :null => false
     add_column :posts, :status, :string, :limit => 20, :default => "", :null => false
    
  end

  def down
  end
end
