class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :url

      t.belongs_to :user, index: true
      t.belongs_to :topic, index: true
      t.timestamps null: false
    end
  end
end
