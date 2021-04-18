class AddMapsToFacilities < ActiveRecord::Migration[6.0]
  def change
    add_column :facilities, :region_id, :string, null: false
    add_column :facilities, :latitude,  :float,  null: false
    add_column :facilities, :longitude, :float,  null: false
  end
end
