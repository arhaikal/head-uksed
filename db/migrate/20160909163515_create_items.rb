class CreateItems < ActiveRecord::Migration
  def up
    create_table :items do |t|
      t.string :title
      t.string :price
      t.text :description
      t.text :material

      t.timestamps null: false
    end
   def down 
     drop_table :items
   end
  end
end
