class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.text :descripton
      t.decimal :price
      t.string :image_url
      t.belongs_to :categories, index: true

      t.timestamps
    end
  end
end
