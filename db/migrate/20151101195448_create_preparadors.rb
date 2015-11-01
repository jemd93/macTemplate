class CreatePreparadors < ActiveRecord::Migration
  def change
    create_table :preparadors do |t|
      t.string :name
      t.string :email
      t.string :avatar

      t.timestamps null: false
    end
  end
end
