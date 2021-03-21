class CreateFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :facilities do |t|
      t.string  :name,            null: false
      t.string  :kananame,        null: false
      t.integer :category_id,     null: false
      t.integer :prefectures_id,  null: false
      t.string  :address,         null: false
      t.string  :official_website

      t.timestamps
    end
  end
end
