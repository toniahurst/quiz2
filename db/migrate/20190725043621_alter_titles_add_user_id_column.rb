class AlterTitlesAddUserIdColumn < ActiveRecord::Migration[5.2]
  def change
  	add_column :titles, :user_id, :integer
  	add_index :titles, :user_id
  end
end
