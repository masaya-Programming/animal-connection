class CreateGoods < ActiveRecord::Migration[6.0]
  def change
    create_table :goods do |t|
      t.references :user,    foreign_key: true
      t.references :picture, foreign_key: true

      t.timestamps
      t.index [:user_id, :picture_id], unique: true
    end
  end
end
