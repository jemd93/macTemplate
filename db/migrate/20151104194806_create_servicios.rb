class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :name
      t.text :info

      t.timestamps null: false
    end
  end
end
