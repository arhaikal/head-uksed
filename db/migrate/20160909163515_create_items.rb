class CreateItems < ActiveRecord::Migration
  def up
    create_table :items do |t|
      t.string :title
      t.string :price
      t.string :description
      t.string :material

      t.timestamps null: false
    end
   def down 
     drop_table :items
   end
  end
end
