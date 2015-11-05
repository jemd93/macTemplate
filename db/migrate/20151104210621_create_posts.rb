class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :info

      t.timestamps null: false
    end
  end
end
