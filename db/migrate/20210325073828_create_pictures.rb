class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string     :title,       null: false
      t.text       :description
      t.references :user,        foreign_key: true
      t.references :facility,    foreign_key: true

      t.timestamps
    end
  end
end
