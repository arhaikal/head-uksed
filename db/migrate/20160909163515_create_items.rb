class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :price
      t.string :description
      t.string :material

      t.timestamps null: false
    end
  end
end
