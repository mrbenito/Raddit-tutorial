class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.string :description

      t.timestamps null: false
    end
    add_column :topics, :user_id, :integer, null: false
    add_index :topics, :user_id
  end
end
