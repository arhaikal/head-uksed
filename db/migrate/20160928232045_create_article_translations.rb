class CreateArticleTranslations < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up do
        Item.create_translation_table!({
           description: :string,
           material: :text
        }, {
          :migrate_data => true
        })
      end

      dir.down do 
        Item.drop_translation_table! :migrate_data => true
      end
    end
  end
end