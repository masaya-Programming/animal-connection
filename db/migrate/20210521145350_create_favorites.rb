class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.references :user,     foreign_key: true
      t.references :facility, foreign_key: true

      t.timestamps
      t.index [:user_id, :facility_id], unique: true
    end
  end
end
